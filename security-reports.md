
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

###[CVE-2016-6802](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6802)
Apache Shiro before 1.3.2 allows attackers to bypass intended servlet filters and gain access by leveraging use of a non-root servlet context path.

###[CVE-2016-4437](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-4437)
Apache Shiro before 1.2.5, when a cipher key has not been configured for the "remember me" feature, allows remote attackers to execute arbitrary code or bypass intended access restrictions via an unspecified request parameter.

###[CVE-2014-0074](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0074)
Apache Shiro 1.x before 1.2.3, when using an LDAP server with unauthenticated bind enabled, allows remote attackers to bypass authentication via an empty (1) username or (2) password.

###[CVE-2010-3863](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2010-3863)
Apache Shiro before 1.1.0, and JSecurity 0.9.x, does not canonicalize URI paths before comparing them to entries in the shiro.ini file, which allows remote attackers to bypass intended access restrictions via a crafted request, as demonstrated by the /./account/index.jsp URI.
