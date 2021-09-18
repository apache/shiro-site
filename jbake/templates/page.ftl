<#include "header.ftl">

	<#if (content.title)??>
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>
	<#else></#if>

	<@content.body?interpret />

	<hr />

<#include "footer.ftl">
