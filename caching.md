<a name="Caching-Caching"></a>
#Caching

The Shiro development team understands performance is critical in many applications. Caching is a first class feature built into Shiro from day one to ensure that security operations remain as fast as possible.

However, while Caching as a concept is a fundamental part of Shiro, implementing a full Cache mechanism would be outside the core competency of a security framework. To that end, Shiro's cache support is basically an abstraction (wrapper) API that will 'sit' on top of an underlying production Cache mechanism (e.g. Hazelcast, Ehcache, OSCache, Terracotta, Coherence, GigaSpaces, JBossCache, etc). This allows a Shiro end-user to configure any cache mechanism they prefer.

<a name="Caching-CachingAPI"></a>
##Caching API

Shiro has three important cache interfaces:

*   [`CacheManager`](static/current/apidocs/org/apache/shiro/cache/CacheManager.html) - The primary Manager component for all caching, it returns `Cache` instances.
*   [`Cache`](static/current/apidocs/org/apache/shiro/cache/Cache.html) - Maintains key/value pairs
*   [`CacheManagerAware`](static/current/apidocs/org/apache/shiro/cache/CacheManagerAware.html) - Implemented by components wishing to receive and use a CacheManager instance

A `CacheManager` returns `Cache` instances and various Shiro components use those `Cache` instances to cache data as necessary. Any Shiro
component that implements `CacheManagerAware` will automatically receive a configured `CacheManager`, where it can be used to acquire `Cache` instances.

The Shiro [SecurityManager](securitymanager.html "SecurityManager") implementations and all [`AuthenticatingRealm`](static/current/apidocs/org/apache/shiro/realm/AuthenticatingRealm.html) and [`AuthorizingRealm`](static/current/apidocs/org/apache/shiro/realm/AuthorizingRealm.html) implementations implement CacheManagerAware. If you set the `CacheManager` on the `SecurityManager`, it will in turn set it on the various Realms that implement CacheManagerAware as well (OO delegation). For example, in shiro.ini:

**example shiro.ini CacheManger configuration**

``` ini
securityManager.realms = $myRealm1, $myRealm2, ..., $myRealmN
...
cacheManager = my.implementation.of.CacheManager
...
securityManager.cacheManager = $cacheManager
# at this point, the securityManager and all CacheManagerAware
# realms have been set with the cacheManager instance
```

<a name="Caching-CacheManagerImplementations"></a>
##CacheManager Implementations

Shiro provides a number of out-of-the-box `CacheManager` implementations that you might find useful instead of implementing your own.

<a name="Caching-%7B%7BMemoryConstrainedCacheManager%7D%7D"></a>
###`MemoryConstrainedCacheManager`

The [`MemoryConstrainedCacheManager`](static/current/apidocs/org/apache/shiro/cache/MemoryConstrainedCacheManager.html) is a `CacheManager` implementation suitable for single-JVM production environments. It is not clustered/distributed, so if your application spans across more than one JVM (e.g. web app running on multiple web servers), and you want cache entries to be accessible across JVMs, you will need to use a distributed cache implementation instead.

The `MemoryConstrainedCacheManager` manages [`MapCache`](static/current/apidocs/org/apache/shiro/cache/MapCache.html) instances, one `MapCache` instance per named cache. Each `MapCache` instance is backed by a Shiro [`SoftHashMap`](static/current/apidocs/org/apache/shiro/util/SoftHashMap.html) which can auto-resize itself based on an application's runtime memory constraints/needs (by leveraging JDK [`SoftReference`](https://docs.oracle.com/javase/7/docs/api/java/lang/ref/SoftReference.html) instances).

Because the `MemoryConstrainedCacheManager` can auto-resize itself based on an application's memory profile, it is safe to use in a single-JVM production application as well as for testing needs. However, it does not have more advanced features suche as cache entry Time-to-Live or Time-to-Expire settings. For these more advanced cache management features, you'll likely want to use one of the more advanced `CacheManager` offerings below.

**MemoryConstrainedCacheManger shiro.ini configuration example**

``` ini
...
cacheManager = org.apache.shiro.cache.MemoryConstrainedCacheManager
...
securityManager.cacheManager = $cacheManager
```

<a name="Caching-%7B%7BHazelcastCacheManager%7D%7D"></a>
###`HazelcastCacheManager`

TBD

<a name="Caching-%7B%7BEhCacheManager%7D%7D"></a>
###`EhCacheManager`

TBD

<a name="Caching-AuthorizationCacheInvalidation"></a>
##Authorization Cache Invalidation

Finally note that [`AuthorizingRealm`](static/current/apidocs/org/apache/shiro/realm/AuthorizingRealm.html) has a [clearCachedAuthorizationInfo method](static/current/apidocs/org/apache/shiro/realm/AuthorizingRealm.html#clearCachedAuthorizationInfo-org.apache.shiro.subject.PrincipalCollection-) that can be called by subclasses to evict the cached authzInfo for a particular account. It is usually called by custom logic if the corresponding account's authz data has changed (to ensure the next authz check will pick up the new data).
<input type="hidden" id="ghEditPage" value="caching.md"></input>
