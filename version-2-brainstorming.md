
*   [Rename AuthenticationInfo to Account](#Version2Brainstorming-RenameAuthenticationInfotoAccount)
*   [Realm refactoring](#Version2Brainstorming-Realmrefactoring)
*   [Split shiro-core into modules](#Version2Brainstorming-Splitshirocoreintomodules)
*   [Event-driven design](#Version2Brainstorming-Eventdrivendesign)
*   [Subject PrincipalCollection](#Version2Brainstorming-SubjectPrincipalCollection)
*   [Component Names](#Version2Brainstorming-ComponentNames)
*   [Authorization ANTLR Grammar](#Version2Brainstorming-AuthorizationANTLRGrammar)
*   [AuthorizationRequest/Response](#Version2Brainstorming-AuthorizationRequest%2FResponse)
*   [Reinforce customization via OO Delegation (composition over inheritance)](#Version2Brainstorming-ReinforcecustomizationviaOODelegation%28compositionoverinheritance%29)
*   [Multi-Stage Authentication via request/response](#Version2Brainstorming-MultiStageAuthenticationviarequest%2Fresponse)
*   [Captcha Support](#Version2Brainstorming-CaptchaSupport)
*   [Configuration per filter instance and no path matching](#Version2Brainstorming-Configurationperfilterinstanceandnopathmatching)
*   [Web module repackaging.](#Version2Brainstorming-Webmodulerepackaging.)

There is currently no timeline for a version 2, but this space represents any brainstorming efforts that the community wishes to address that may be major feature enhancements that can't be backwards compatible. Typically discussions from the dev list resulting in some form of consensus will probably make it into this page. Actionable items will go into Jira, potentially referencing this page for clarity.

*   (I know this isn't a feature but its equally is not more important) Deeper and more accessible documentation and how-tos.
*   management system for long lived hashes
*   token/ticket system
*   more generalized way to handle unauthorized exceptions
*   lower level crypto toolkit to facilitate customizations
*   unauthorizedUrl per path filter

<a name="Version2Brainstorming-RenameAuthenticationInfotoAccount"></a>
###Rename AuthenticationInfo to Account

The existing `AuthenticationInfo` name is less intuitive and is essentially the same thing.

<a name="Version2Brainstorming-Realmrefactoring"></a>
###Realm refactoring

Most Realms differ little in their implementations - mostly by the protocols they use. Create a 'DefaultRealm' implementation (or something similar) that allows pluggable AccountResolver and AuthorizationResolver interfaces that abstract away interaction with the data stores and the rest of the internal Realm logic (e.g. authc and authz caching, etc) can be shared by most Realm implementation.

<a name="Version2Brainstorming-Splitshirocoreintomodules"></a>
###Split shiro-core into modules

Maybe shiro-core should be split up into separate modules (e.g. shiro-crypto, shiro-authc, shiro-authz, etc) if possible. This may or may not be possible due to the tight integration of APIs (e.g. Shiro authentication depends on shiro hashing (crypto) etc). A cursory investigation should be made if possible.

<a name="Version2Brainstorming-Eventdrivendesign"></a>
###Event-driven design

**This can be in 1.3+ as these would be all new packages/classes and do not require signature changes to existing code**

Utilize events significantly and more effectively. Base on Akka's event model and [Guava's EventBus](http://code.google.com/p/guava-libraries/wiki/EventBusExplained). This enables ideal loose coupling/high cohesion plugins/integration/customization.

Package: `org.apache.shiro.event`

Potential classes:

``` java
public class ShiroEvent extends EventObject {

    private final long timestamp; //millis since Epoch (UTC time zone). 
    public ShiroEvent(Object source) {
        super(source);
        this.timestamp = new Date().getTime();
    }

    public long getTimestamp() {
        return timestamp;
    }
}
```

``` java

public interface Publisher {

    void publish(Object event);
}
```

``` java
/** Marker annotation for a method that wishes to receive a particular event instance. */
public @interface Subscribe {
}
```

``` java
/** 
  * Listener implementations just annotate a method as @Subscribe.  
  * The single method argument determines the type of event received.
  */
public class MyListener {

    @Subscribe
    public void doSomething(SomeEvent event) {
        ...
    }
}
```

``` java
public interface SubscriberRegistry {

    void register(Object subscriber);

    void unregister(Object subscriber);
}
```

An EventBus can be created based on Publisher + SubscriberRegistry:

``` java
public class SynchronousEventBus implements Publisher, SubscriberRegistry {
    ...
}
```

<a name="Version2Brainstorming-SubjectPrincipalCollection"></a>
###Subject PrincipalCollection

Convert this to be a sub-interface of Map with additional per-Realm utility methods.

See the [PrincipalMap](https://github.com/apache/shiro/blob/master/core/src/main/java/org/apache/shiro/subject/PrincipalMap.java) concept for ideas (experimental, not referenced in Shiro 1.x at the moment).

Maybe rename this to 'attributes'? i.e. `subject.getAttributes()`?

<a name="Version2Brainstorming-ComponentNames"></a>
###Component Names

Change classes named FooDAO to FooStore instead.

<a name="Version2Brainstorming-AuthorizationANTLRGrammar"></a>
###Authorization ANTLR Grammar

Ideally, we can have a single annotation:

``` java
@Secured("authz expression here")
public void someMethod(){...}
```

Where the 'authz expression here' is authorization assertion statement backed by an ANTLR lexer/parser, for example:

``` java
@Secured("(role(admin) || role(developer)) || perm(account:12345:open)")
```

This would translate the expression into the relevant hasRole/isPermitted calls.

<a name="Version2Brainstorming-AuthorizationRequest%2FResponse"></a>
###AuthorizationRequest/Response

Employing the same grammar as mentioned above, instead of multiple subject.isPermitted/hasRole calls, the same thing could be achieved with an AuthorizationRequest/Response scheme. For example:

``` java
AuthorizationRequest request = //create request w/ expression
AuthorizationResponse response = subject.authorize(authorizationRequest);
if (response.isAuthorized()) {
...
} else {
...
}
```

<a name="Version2Brainstorming-ReinforcecustomizationviaOODelegation%28compositionoverinheritance%29"></a>
###Reinforce customization via OO Delegation (composition over inheritance)

*   Any of the features provided by PathMatchingFilter would be provided for any configured filter via a proxy mechanism. The proxy would likely support the PathMatchingFilter features, setting request attributes as necessary for the wrapped filter to react to. This eliminates the need to subclass PathMatchingFilter to utilize these features.
*   The same principal would be probably be applied for realms. A DefaultRealm could be created that delegates to an AuthenticationInfoAccessor and AuthorizationInfoAccessor (or whatever we want to call them) that performs the same behavior as AuthenticatingRealm#doGetAuthenticationInfo and AuthorizingRealm#doGetAuthorizationInfo. The end result is no more subclassing realms for 95% of use cases, and instead providing accessors.

<a name="Version2Brainstorming-MultiStageAuthenticationviarequest%2Fresponse"></a>
###Multi-Stage Authentication via request/response

In applications that need to authenticate via multiple mechanisms (e.g. multi-factor authentication), a Request/Response protocol for login would probably be easier to use to support such workflows. For example:

``` java
LoginRequest request = //create login request 
LoginResponse response = subject.login(request);
if (!response.isComplete()) {
    LoginRequest secondRequest = response.nextRequest();
    //populate w/ data for 2nd phase
   response = subject.login(secondRequest);
}
if (response.hasException()) {
    throw response.getException();
}
...
```

Additionally probably change the Authenticator signature to be as follows:

``` java
AuthenticationResult authenticate(AuthenticationRequest) throws AuthenticationException;
```

<a name="Version2Brainstorming-CaptchaSupport"></a>
###Captcha Support

Captcha support would assist in human being verification (during login, during form submission, etc).

<a name="Version2Brainstorming-Configurationperfilterinstanceandnopathmatching"></a>
###Configuration per filter instance and no path matching

<a name="Version2Brainstorming-filterperinstance"></a>
[SHIRO-256](https://issues.apache.org/jira/browse/SHIRO-256) is opened for this and [Tynamo.org](http://tynamo.org) already has an implementation for it. This would both simplify the filter logic and result in better performance.

<a name="Version2Brainstorming-Webmodulerepackaging."></a>
###Web module repackaging.

The Web module is largely Servlet-specific at the moment. As such, its packaging should reflect this, in the same way that all other support modules are named, e.g.  
module name: `shiro-servlet`  
package base: `org.apache.shiro.servlet.*`
<input type="hidden" id="ghEditPage" value="version-2-brainstorming.md"></input>
