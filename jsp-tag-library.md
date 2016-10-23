<a name="JSPTagLibrary-JSP%2FGSPTagLibraryforApacheShiro"></a>
#JSP/GSP Tag Library for Apache Shiro

*   **<shiro:guest/>** - Displays body content only if the current Subject IS NOT known to the system, either because they have not logged in or they have no corresponding 'RememberMe' identity. It is logically opposite to the 'user' tag.

*   **<shiro:user/>** - Displays body content only if the current Subject has a known identity, either from a previous login or from 'RememberMe' services. Note that this is semantically different from the 'authenticated' tag, which is more restrictive. It is logically opposite to the 'guest' tag.

*   **<shiro:principal/>** - Displays the user's principal or a property of the user's principal.

*   **<shiro:hasPermission/>** - Displays body content only if the current Subject (user) 'has' (implies) the specified permission (i.e the user has the specified ability).

*   **<shiro:lacksPermission/>** - Displays body content only if the current Subject (user) does NOT have (not imply) the specified permission (i.e. the user lacks the specified ability)

*   **<shiro:hasRole/>** - Displays body content only if the current user has the specified role.

*   **<shiro:lacksRole/>** - Displays body content only if the current user does NOT have the specified role (i.e. they explicitly lack the specified role)

*   **<shiro:hasAnyRoles/>** - Displays body content only if the current user has one of the specified roles from a comma-separated list of role names

*   **<shiro:authenticated/>** - Displays body content only if the current user has successfully authenticated _during their current session_. It is more restrictive than the 'user' tag. It is logically opposite to the 'notAuthenticated' tag.

*   **<shiro:notAuthenticated/>** - Displays body content only if the current user has NOT succesfully authenticated _during their current session_. It is logically opposite to the 'authenticated' tag.