<a name="FeaturesOverview-ApacheShiroFeaturesOverview"></a>
#Apache Shiro Features Overview

Apache Shiro aims to be the most comprehensive, but also the easiest to use Java security framework available. Here are some of the frameworks finer points:

*   The easiest to understand Java Security API anywhere. Class and Interface names are intuitive and _make sense_. Anything is pluggable but good defaults exist for everything.

*   Support authentication ('logins') across one or more pluggable data sources (LDAP, JDBC, ActiveDirectory, etc).

*   Perform authorization ('access control') based on roles or fine-grained permissions, also using pluggable data sources.

*   First-class caching support for enhanced application performance.

*   Built-in POJO-based Enterprise Session Management. Use in both web and non-web environments or in any environment where Single Sign On (SSO) or clustered or distributed sessions are desired.

*   _Heterogeneous_ client session access. You are no longer forced to use only the `HttpSession` or Stateful Session Beans, which often unnecessarily tied applications to specific environments. Flash applets, C# applications, Java Web Start, and Web Applications, etc. can now all share session state regardless of deployment environment.

*   Simple Single Sign-On (SSO) support piggybacking the above Enterprise Session Management. If sessions are federated across multiple applications, the user's authentication state can be shared too. Log in once to any application and the others all recognize that log-in.

*   Secure data with the easiest possible Cryptography APIs available, giving you power and simplicity beyond what Java provides by default for ciphers and hashes.

*   An incredibly robust yet **_low-configuration_** web framework that can secure any url or resource, automatically handle logins and logouts, perform Remember Me services, and more.

*   Extremely low number of required dependencies. Standalone configuration requires only `slf4j-api.jar` and one of slf4j's binding .jars. Web configuration additionally requires `commons-beanutils-core.jar`. Feature-based dependencies (Ehcache caching, Quartz-based Session validation, Spring dependency injection, etc.) can be added when needed.

<a name="FeaturesOverview-WantmoreinformationonwhatShirocando%3F"></a>
##Want more information on what Shiro can do?

Check out the specific features for each of Shiro's major components: [Authentications](authentication-features.html "Authentication Features"), [Authorization](authorization-features.html "Authorization Features"), [Session Management](session-management-features.html "Session Management Features"), and [Cryptogrpahy](cryptography-features.html "Cryptography Features").

<a name="FeaturesOverview-GetStartedin10MinuteswithShiro"></a>
##Get Started in 10 Minutes with Shiro

Try out Shiro for yourself with our [10 Minute Tutorial](10-minute-tutorial.html "10 Minute Tutorial"). And if you have any questions about Shiro, please check out our [community forum](forums.html "Forums") or [user mailing list](mailing-lists.html "Mailing Lists") for answers from the community.
<input type="hidden" id="ghEditPage" value="features-overview.md"></input>
