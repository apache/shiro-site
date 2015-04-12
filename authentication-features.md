title: AuthenticationFeatures-ApacheShiroAuthenticationFeatures

#Apache Shiro Authentication Features

Authentication is the process of identity verification-- you are trying to verify a user is who they say they are.  To do so, a user needs to provide some sort of proof of identity that your system understands and trusts. 

The Shiro framework is designed to make authentication as clean and intuitive as possible while providing a rich set of features.  Below is a highlight of the Shiro authentication features.

## Features

<table align="right" width="275" style="margin-left: 20px; margin-bottom: 20px; border-style: solid; border-width: 2px; border-color: navy" cellpadding="10px">

<tr>
<td>
<div id="border">
  <h2>Related Content</h2>
	
  <h3><a href="java-authentication-guide.html">Java Authentication Guide</a></h3>
  <p>Learn how Authentication in Java is performed in Shiro. </br><span style="font-size:11"><a href="java-authentication-guide.html">Read More &gt;&gt;</a></span></p>	
	
  <h3><a href="authentication.html">Authentication Docs</a></h3>
  <p>Full documentation on Shiro's Authentication functionality. </br><span style="font-size:11"><a href="authentication.html">Read More &gt;&gt;</a></span></p>
	
  <h3><a href="get-started.html">Getting Started</a></h3>
  <p>Resources, guides and tutorials for new Shiro users. </br><span style="font-size:11"><a href="get-started.html">Read More &gt;&gt;</a></span></p>	
	
  <h3><a href="webapp-tutorial.html">Web App Tutorial</a></h3>
  <p>Step-by-step tutorial for securing a web application with Shiro. </br><span style="font-size:11"><a href="webapp-tutorial.html">Read More &gt;&gt;</a></span></p>
	
</div>
</td>
</tr>
</table>


*   **Subject Based** - Almost everything you do in Shiro is based on the currently executing user, called a Subject.  And you can easily retrieve the Subject anywhere in your code.  This makes it easier for you to understand and work with Shiro in your applications.

*   **Single Method call** - The authentication process is a single method call.  Needing only one method call keeps the API simple and your application code clean, saving you time and effort.

*   **Rich Exception Hierarchy** - Shiro offers a rich exception hierarchy to offered detailed explanations for why a login failed.  The hierarchy can help you more easily diagnose code bugs or customer services issues related to authentication.  In addition, the richness can help you create more complex authentication functionality if needed.

*   **'Remember Me' built in** - Standard in the Shiro API is the ability to remember your users if they return to your application.  You can offer a better user experience to your them with minimal development effort.

*   **Pluggable data sources** - Shiro uses pluggable data access objects (DAOs), called Realms, to connect to security data sources like LDAP and Active Directory.  To help you avoid building and maintaining integrations yourself, Shiro provides out-of-the-box realms for popular data sources like LDAP, Active Directory, and JDBC.  If needed, you can also create your own realms to support specific functionality not included in the basic realms.

*   **Login with one or more realms** - Using Shiro, you can easily authenticate a user against one or more realms and return one unified view of their identity.  In addition, you can customize the authentication process with Shiro's notion of an authentication strategy. The strategies can be setup in configuration files so changes don't require source code modifications-- reducing complexity and maintenance effort.

