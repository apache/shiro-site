<a name="JavaAnnotationsList-JavaAnnotationsList"></a>
#Java Annotations List

Below are a list of the different Shiro annotations you can use in your application.

* **[RequiresAuthentication](static/current/apidocs/org/apache/shiro/authz/annotation/RequiresAuthentication.html)** - Requires the current Subject to have been authenticated during their current session for the annotated class/instance/method to be accessed or invoked

* **[RequiresGuest](static/current/apidocs/org/apache/shiro/authz/annotation/RequiresGuest.html)** - Requires the current Subject to be a "guest", that is, they are not authenticated or remembered from a previous session for the annotated class/instance/method to be accessed or invoked.

* **[RequiresPermissions](static/current/apidocs/org/apache/shiro/authz/annotation/RequiresPermissions.html)** - Requires the current executor's Subject to imply a particular permission in order to execute the annotated method. If the executor's associated Subject determines that the executor does not imply the specified permission, the method will not be executed.

* **[RequiresRoles](static/current/apidocs/org/apache/shiro/authz/annotation/RequiresRoles.html)** - Requires the currently executing Subject to have all of the specified roles. If they do not have the role(s), the method will not be executed and an AuthorizationException is thrown.

* **[RequiresUser](static/current/apidocs/org/apache/shiro/authz/annotation/RequiresUser.html)** - Requires the current Subject to be an application user for the annotated class/instance/method to be accessed or invoked.
