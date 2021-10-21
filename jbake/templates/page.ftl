<#include "header.ftl">

	<#if (content.title)??>
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>
	<#else></#if>

	<#if (content.related)??>
		<div class="related-content">
			<h2>Related Content</h2>
			<#list content.related.links>
				<#items as link>
					<#list db.getDocumentByUri(link)>
						<#items as linkedDoc>
							<#if (linkedDoc.title)??>
								<h3 class="title"><a href="${link}">${linkedDoc.title}</a></h3>
								<p class="description">
								<#if (linkedDoc.description)??>
									${linkedDoc.description}
								</#if>
								</p>
								<p>
									<span class="read-more"><a href="${link}">Read More &gt;&gt;</a></span>
								</p>
							</#if>
						</#items>
					</#list>
				</#items>
			</#list>
		</div>
	</#if>

	<@content.body?interpret />

	<hr />

<#include "footer.ftl">
