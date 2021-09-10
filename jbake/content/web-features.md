title=Apache Shiro for Web Applications
type=page
tags=documentation, overview, web
status=published
~~~~~~

Although Apache Shiro is designed to be used to secure _any_ JVM-based application, it is most commonly used to secure a web application. It greatly simplifies how you secure web applications base on simple URL pattern matching and filter chain definitions. In addition to Shiro's API, Shiro's web support includes a rich JSP tag library to control page output.

	

## Features

* **Simple ShiroFilter web.xml definition** 
You can enable Shiro for a web application with one simple filter definition in web.xml.

* **Protects all URLs**
Shiro can protect any type of web request that comes into your system.  For example, dynamically generated pages, REST request, etc.

* **Innovative Filtering (URL-specific chains)**
Defining URL specific filter chains is much easier and more intuitive than using web.xml because, in Shiro, you can explicitly specify which filters you want to execute for each path and in what order.  And with Shiro you can have path-specific configuration for each filter in that chain.


* **JSP Tag support**
The JSP tags allow you to easily control page output based on the current user's state and access rights.

* **Transparent HttpSession support**
If you are using Shiro's native sessions, we have implemented HTTP Session API and the Servlet 2.5 API so you don't have to change any of your existing web code to use Shiro.
