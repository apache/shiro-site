<#include "header.ftl">

	<#if (content.title)??>
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>
	<#else></#if>

	<#setting locale="en_GB" />
  <#if (content.author??)>
		<#assign authors=data.get('authors.yaml').authors />
		<#if (authors[content.author])?? && (authors[content.author].twitter)??>
			<#assign theauthor="by <a rel=\"author\" href=\"https://twitter.com/${authors[content.author].twitter}\">${content.author}</a>&nbsp;" />
		<#else>
			<#assign theauthor="by ${content.author}&nbsp;" />
		</#if>
	<#else>
		<#assign theauthor="" />
  </#if>
	<#switch content.date?string("d")>
		<#case "1">
			<#assign ordsuf="st">
			<#break>
		<#case "2">
		  <#assign ordsuf="nd">
			<#break>
		<#case "3">
			<#assign ordsuf="rd">
			<#break>
		<#default>
			<#assign ordsuf="th">
	</#switch>

	<p>
		<em>Published ${theauthor}on the
			<time datetime="${content.date?date?string.iso}">${content.date?string("dd")}${ordsuf} of ${content.date?string("MMMM, yyyy")}</time>
		</em>
	</p>

	${content.body}

	<hr />
	
<#include "footer.ftl">
