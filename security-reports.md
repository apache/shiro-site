
Reporting a vulnerability
-------------------------

We strongly encourage people to report security vulnerabilities privately to our security list before disclosing them in a public forum.

Please note that the e-mail address below should only be used for reporting undisclosed security vulnerabilities in Apache Shiro and managing the process of fixing such vulnerabilities. We cannot accept regular bug reports or other queries at this address.

[security@shiro.apache.org](mailto:security@shiro.apache.org)


Vulnerability Handling Process
------------------------------

An overview of the vulnerability handling process is:

* The reporter reports the vulnerability privately to [security@shiro.apache.org](mailto:security@shiro.apache.org).
* The Apache Shiro PMC team works privately with the reporter to resolve the vulnerability.
* A new release of the Apache Shiro concerned is made that includes the fix.
* The vulnerability is publicly announced.

A [more detailed description of the process](http://www.apache.org/security/committers.html) has been written for committers. Reporters of security vulnerabilities may also find it useful.


Apache Shiro Vulnerability Reports
----------------------------------

###[CVE-2020-17510](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-17510)
Apache Shiro before 1.7.0, when using Apache Shiro with Spring, a specially crafted HTTP request may cause an authentication bypass.

If you are NOT Shiro's Spring Boot Starter (`shiro-spring-boot-web-starter`), you must configure add the [`ShiroRequestMappingConfig` auto configuration to your application](/spring-framework.html#SpringFramework-WebConfig) or configure the [equivalent manually](https://github.com/apache/shiro/blob/shiro-root-1.7.0/support/spring/src/main/java/org/apache/shiro/spring/web/config/ShiroRequestMappingConfig.java#L28-L30).

###[CVE-2020-13933](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-13933)
Apache Shiro before 1.6.0, when using Apache Shiro, a specially crafted HTTP request may cause an authentication bypass.

###[CVE-2020-11989](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-11989)
Apache Shiro before 1.5.3, when using Apache Shiro with Spring dynamic controllers, a specially crafted request may cause an authentication bypass.

###[CVE-2020-1957](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-1957)
Apache Shiro before 1.5.2, when using Apache Shiro with Spring dynamic controllers, a specially crafted request may cause an authentication bypass.

###[CVE-2019-12422](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-12422)
Apache Shiro before 1.4.2, when using the default "remember me" configuration, cookies could be susceptible to a padding attack.

###[CVE-2016-6802](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6802)
Apache Shiro before 1.3.2 allows attackers to bypass intended servlet filters and gain access by leveraging use of a non-root servlet context path.

###[CVE-2016-4437](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-4437)
Apache Shiro before 1.2.5, when a cipher key has not been configured for the "remember me" feature, allows remote attackers to execute arbitrary code or bypass intended access restrictions via an unspecified request parameter.

###[CVE-2014-0074](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0074)
Apache Shiro 1.x before 1.2.3, when using an LDAP server with unauthenticated bind enabled, allows remote attackers to bypass authentication via an empty (1) username or (2) password.

###[CVE-2010-3863](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2010-3863)
Apache Shiro before 1.1.0, and JSecurity 0.9.x, does not canonicalize URI paths before comparing them to entries in the shiro.ini file, which allows remote attackers to bypass intended access restrictions via a crafted request, as demonstrated by the /./account/index.jsp URI.
