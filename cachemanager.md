# Cache Manager

Shiro has three important cache interfaces:

* [`CacheManager`](static/current/apidocs/org/apache/shiro/cache/CacheManager.html)

* [`Cache`] (static/current/apidocs/org/apache/shiro/cache/Cache.html)

* [`CacheManagerAware`] (static/current/apidocs/org/apache/shiro/cache/CacheManagerAware.html)

A `CacheManager` returns `Cache` instances and various Shiro components use those `Cache<` instances to cache data as necessary.  Any Shiro<br clear="none">
component that implements `CacheManager` will automatically receive a configured `CacheManager`, where it can be used to acquire `Cache` instances.

The Shiro [`SecurityManager`](securitymanager.html) implementations and all [`AuthorizingRealm`](static/current/apidocs/org/apache/shiro/realm/AuthorizingRealm.html) implementations implement CacheManagerAware.  If you set the `CacheManager` on the `SecurityManager`, it will in turn set it on the various Realms that implement CacheManagerAware as well (OO delegation).  For example, in shiro.ini:

**example shiro.ini CacheManager configuration**

``` ini

securityManager.realms = $myRealm1, $myRealm2, ..., $myRealmN
...
cacheManager = my.implementation.of.CacheManager
...
securityManager.cacheManager = $cacheManager
# at this point, the securityManager and all CacheManagerAware
# realms have been set with the cacheManager instance
```

We have an out-of-the-box [`EhCacheManager`](static/current/apidocs/org/apache/shiro/cache/ehcache/EhCacheManager.html) implementation, so you can use that today if you wanted.  Otherwise, you can implement your own `CacheManager` (e.g. with Coherence, etc) and configure it as above, and you'll be good to go.

<a name="CacheManager-AuthorizationCacheInvalidation"></a>
###Authorization Cache Invalidation

Finally note that [`AuthorizingRealm`](static/current/apidocs/org/apache/shiro/realm/AuthorizingRealm.html) has a [`clearCachedAuthorizationInfo`](static/current/apidocs/org/apache/shiro/realm/AuthorizingRealm.html#clearCachedAuthorizationInfo%28org.apache.shiro.subject.PrincipalCollection%29) method that can be called by subclasses to evict the cached authzInfo for a particular account.  It is usually called by custom logic if the corresponding account's authz data has changed (to ensure the next authz check will pick up the new data).

<a name="CacheManager-Lendahandwithdocumentation"></a>
###Lend a hand with documentation

While we hope this documentation helps you with the work you're doing with Apache Shiro, the community is improving and expanding the documentation all the time.  If you'd like to help the Shiro project, please consider correcting, expanding, or adding documentation where you see a need. Every little bit of help you provide expands the community and in turn improves Shiro.

The easiest way to contribute your documentation is to send it to the <a class="external-link" href="http://shiro-user.582556.n2.nabble.com/" rel="nofollow">User Forum</a> or the <a href="mailing-lists.html" title="Mailing Lists">User Mailing List</a>.

<input type="hidden" id="ghEditPage" value="cachemanager.md"></input>
