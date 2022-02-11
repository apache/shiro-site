<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
  <title>Apache Shiro | The Apache Software Foundation</title>
  <subtitle>Simple. Java. Security.</subtitle>
  <link href="https://shiro.apache.org/"/>
  <link rel="self" href="${config.site_host}/${config.feed_file}" />
  <updated>${published_date?datetime?iso_utc}</updated>
  <#assign authors = data.get('authors.yaml').authors>
  <#--
    needed because data doesn't return a hash but an object.
    The names are likely to contain a space (for now).
  -->
  <#assign authornames = authors?keys?filter(key -> key.contains(" "))>

  <#list authornames as authorname>
  <author>
    <name>${authorname}</name>
    <#if (authors[authorname].email)??>
    <email>${authors[authorname].email}</email>
    </#if>
    <#if (authors[authorname].twitter)??>
    <uri>https://twitter.com/${authors[authorname].twitter}</uri>
    </#if>
  </author>
  </#list>
  <id>https://shiro.apache.org/</id>
  <generator uri="https://jbake.org/">JBake.org</generator>
  <icon>/images/favicon128.png</icon>
  <logo>/images/apache-shiro-logo.png</logo>

  <#list published_posts[0..*12] as post>
  <entry>
    <title>${post.title}</title>
    <link href="${config.site_host}/${post.uri}"/>
    <id>${config.site_host}/${post.uri}</id>
    <updated>${post.date?date?string.iso_s_nz}</updated>
    <#if (post.description??)>
    <summary>${post.description}</summary>
    </#if>
    <#if (post.author??)>
    <author>
      <name>${post.author}</name>
    </author>
    </#if>
    <content type="html">
      <#escape x as x?xml>
      ${post.body}
      </#escape>
    </content>
  </entry>

  </#list>

</feed>
