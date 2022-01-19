<!DOCTYPE html>
<!--
   Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  See the NOTICE file distributed with
   this work for additional information regarding copyright ownership.
   The ASF licenses this file to You under the Apache License, Version 2.0
   (the "License"); you may not use this file except in compliance with
   the License.  You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-  2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
-->
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>
      <#if (content.title)?? && (content.title)?contains("|")>
      <#-- The page has a full custom title, render it directly: -->
          ${content.title}
      <#elseif (content.title)??>
      <#-- standard title, append the project name appended for SEO: -->
          ${content.title} | Apache Shiro
      <#else>
      <#-- No title found in the page metadata, set the default: -->
        Apache Shiro | Simple. Java. Security.
      </#if>
  </title>

  <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
  <#if (content.target)?starts_with("http") || (content.target)?starts_with("//") >
    <#assign linktarget="${content.target}" />
  <#elseif (content.target)?starts_with("/") >
    <#assign linktarget="${content.rootpath}${content.target}" />
  <#else>
    <#-- relative link -->
    <#assign linktarget="${content.target}" />
  </#if>

  <link rel=canonical href="${linktarget}">
  <meta http-equiv=refresh content="3; url=${linktarget}">
</head>

<body>
  <h1>Redirecting...</h1>

  <p>This page has been moved. You are being redirected.</p>

  <a href="${linktarget}">Click here if you are not redirected.</a>
  <script> document.location = "${linktarget}";</script>

  <@content.body?interpret />
</body>

</html>
