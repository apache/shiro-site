title: Apache Shiro Authorization Features

# Apache Shiro Authorization Features

Authorization, also called access control, is the process of determining access rights to resources in an application.  In other words, determining "who has access to what."  Authorization is used to answer security questions like, "is the user allowed to edit accounts", "is this user allowed to view this web page", "does this user have access to this button?"  These are all decisions determining what a user has access to and therefore all represent authorization checks.

Authorization is a critical element of any application but it can quickly become very complex.  Shiro's goal is to eliminate much of the complexity around authorization so that you can more easily build secure software. Below is a highlight of the Shiro authorization features. 

## Features

*   **Subject-based** - Almost everything you do in Shiro is based on the currently executing user, called a Subject.  And you can easily access the subject retrieve the Subject and checks its roles, permissions, or other relevant attributes anywhere in your code.  This makes it easier for you to understand and work with Shiro in your applications.

*   **Checks based on roles or permissions** - Since the complexity of authorization differs greatly between applications, Shiro is designed to be flexible, supporting both role-based security and permission-based security based on your projects needs.

*   **Powerful and intuitive permission syntax** - As an option, Shiro provides an out-of-the-box permission syntax, called Wildcard Permissions, that help you model the fine grained access policies your application may have. By using Shiro's Wildcard Permissions you get an easy-to-process and human readable syntax.  Moreoever, you don't have to go through the time-consuming effort and complexity of creating your own method for representing your access policies.

*   **Multiple enforcement options** &#8211; Authorization checks in Shiro can be done through in-code checks, JDK 1.5 annotations, AOP, and JSP/GSP Taglibs.  Shiro's goal is to give you the choice to use the option you think are best based on your preferences and project needs.

*   **Strong caching support** - Any of the modern open-source and/or enterprise caching products can be plugged in to Shiro to provide a fast and efficient user-experience. For authorization, caching is crucial for performance in larger environments or with more complex policies using back-end security data sources.

*   **Pluggable data sources** - Shiro uses pluggable data access objects, referred to as Realms, to connect to security data sources where you keep your access control information, like a LDAP or a relational database.  To help you avoid building and maintaining integrations yourself, Shiro provides out-of-the-box realms for popular data sources like LDAP, Active Directory, Kerberos, and JDBC.  If needed, you can also create your own realms to support specific functionality not included in the basic realms.

*   **Supports any data model** - Shiro can support any data model for access control-- it doesn't force a model on you. Your realm implementation ultimately decides how your permissions and roles are grouped together and whether to return a "yes" or a "no" answer to Shiro.  This feature allows you to architect your application in the manner you chose and Shiro will bend to support you.
<input type="hidden" id="ghEditPage" value="authorization-features.md"></input>
