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
<#include "macros/versions.ftl">
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="generator" content="JBake">
    <meta name="google-site-verification" content="QIax6uT5UX3enoU0G8Pz2pXbQ45KaQuHZ3nCh9V27mw">
    <meta name="google-site-verification" content="ecFap6dWJgS_GCCtxmJQJ_nFYQhM6EgSpBPZDU7xsCE">
    <meta name="msvalidate.01" content="0B57EB46CBFAD8FD45008D2DB6B6C68C">

    <!-- Le styles -->
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/bootstrap.min.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>bootstrap-icons-1.5.0/bootstrap-icons.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/asciidoctor.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/base.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/prettify.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/gh-pages/gh-fork-ribbon.css" rel="stylesheet"/>

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
  </head>
  <body>
    <div id="top-bar"></div>
    <a class="github-fork-ribbon right-top" href="https://github.com/apache/shiro" title="Fork me on GitHub">Fork me on GitHub</a>

    <div id="wrap">

      <div class="masthead">
        <p class="lead">
          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/index.html"><img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/apache-shiro-logo.png" style="height:100px; width:auto; vertical-align: bottom; margin-top: 20px;"></a>
          <span class="tagline">Simple. Java. Security.</span>
          <a class="pull-right" href="https://www.apache.org/events/current-event.html">
            <img style="padding-top: 8px" src="https://www.apache.org/events/current-event-125x125.png"/>
          </a>
        </p>
      </div>
