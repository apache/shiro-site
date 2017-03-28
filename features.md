title: Features-ApacheShiroFeaturesOverview

#Apache Shiro Features Overview

Apache Shiro aims to be the most comprehensive, but also the easiest to use Java security framework available.   Here are some of the frameworks finer points:

*   The easiest to understand Java Security API anywhere.  Class and Interface names are intuitive and _make sense_.  Anything is pluggable but good defaults exist for everything.

*   Support [authentication](authentication-features.html) ('logins') across one or more pluggable data sources (LDAP, JDBC, ActiveDirectory, etc).

*   Perform [authorization](authorization-features.html) ('access control') based on roles or fine-grained [permissions](permissions.html), also using pluggable data sources.

*   First-class [caching](caching.html) support for enhanced application performance.

*   Built-in POJO-based Enterprise [Session Management](session-management-features.html).  Use in both web and non-web environments or in any environment where Single Sign On (SSO) or clustered or distributed sessions are desired.

*   _Heterogeneous_ client session access.  You are no longer forced to use only the <tt>httpSession</tt> or Stateful Session Beans, which often unnecessarily tie applications to specific environments.  Flash applets, C# applications, Java Web Start, and Web Applications, etc. can now all share session state regardless of deployment environment.

*   Simple Single Sign-On (SSO) support piggybacking the above Enterprise Session Management.  If sessions are federated across multiple applications, the user's authentication state can be shared too.  Log in once to any application and the others all recognize that log-in.

*   Secure data with the easiest possible [Cryptography](cryptography-features.html) APIs available, giving you power and simplicity beyond what Java provides by default for ciphers and hashes.

*   An incredibly robust yet _low-configuration_ web framework that can secure any url or resource, automatically handle logins and logouts, perform Remember Me services, and more.

*   Extremely low number of required dependencies.  Standalone configuration requires only <tt>slf4j-api.jar</tt> and one of slf4j's binding .jars.  Web configuration additionally requires <tt>commons-beanutils-core.jar</tt>.  Feature-based dependencies (Ehcache caching, Quartz-based Session validation, Spring dependency injection, etc.) can be added when needed.

## Want more information on what Shiro can do?  

Check out the specific features for each of Shiro's major components: [Authentication](authentication-features.html), [Authorization](authorization-features.html), [Session Management](session-management-features.html), and [Cryptography](cryptography-features.html).

##Get Started in 10 Minutes with Shiro

Try out Shiro for yourself with our [10 Minute Tutorial](10-minute-tutorial.html).  And if you have any questions about Shiro, please check out our [community forum](forums.html) or [user mailing list](mailing-lists.html) for answers from the community.
<input type="hidden" id="ghEditPage" value="features.md"></input>
