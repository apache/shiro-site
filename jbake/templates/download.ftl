<#include "header.ftl">

<#import "macros/artifacttable.ftl" as artifacttable>

<#if (content.title)??>
  <div class="page-header">
    <h1>${content.title}</h1>
  </div>
<#else></#if>

<p><@content.body?interpret /></p>

<#-- if not releases are given using :jbake-release:, assume oldReleases. -->
<#if ((content.releases).versions)??>
    <#assign displayReleases=((content.releases).versions)![] />
<#else>
    <#assign displayReleases=versions.oldReleases />
</#if>

<p>
  <ul>
  <#list displayReleases as version>
    <#assign release=versions.releases[version] />
    <li><a href="#${release.version?replace(".", "")}">Apache Shiro Release v${release.version}</a></li>
    <ul>
      <li><a href="#${release.version?replace(".", "")}Binary">${release.version} Binary Distribution</a></li>
      <li><a href="#${release.version?replace(".", "")}Source">${release.version} Source Code Distribution</a></li>
      <li><a href="#${release.version?replace(".", "")}Git">${release.version} Git Source repository</a></li>
    </ul>
  </#list>
  </ul>
</p>



<#list displayReleases as version>
  <#assign release=versions.releases[version] />
  <h2>Release ${release.version}</h2>

  <h4><a id="#${release.version?replace(".", "")}Binary"></a>${release.version} Binary Distribution</h4>


  <p>Associated documentation can be found <a href="documentation.html" title="Documentation">here</a></p>

  <p>To download the files directly as one .jar file just click the link in the "Artifact" column. If you would like
    acquire Shiro through Maven, then please use the markup listed under "Maven Usage"</p>

  <p>
  </p>

  <@artifacttable.artifactTable versionObject=release />

  <h4><a id=""#${release.version?replace(".", "")}Source"></a>${release.version} Source Code Distribution</h4>

  <p>The source bundle requires JDK 1.8 and Maven 3.0.3+ to build:</p>

  <p><a class="external-link" href="https://www.apache.org/dyn/closer.lua/shiro/${release.version}/shiro-root-${release.version}-source-release.zip">zip</a>
    (<a class="external-link"
        href="https://www.apache.org/dist/shiro/${release.version}/shiro-root-${release.version}-source-release.zip.asc">pgp</a>, <a
            class="external-link"
            href="https://www.apache.org/dist/shiro/${release.version}/shiro-root-${release.version}-source-release.zip.sha512">sha512</a>)
  </p>

  <h4><a name="latestGit"></a>${release.version} Git Source repository</h4>

  <p>The source can be cloned anonymously from Git with this command:</p>
  <pre><code style="bash" class="language-bash">git clone https://github.com/apache/shiro.git
git checkout shiro-root-${release.version} -b shiro-root-${release.version}
</code>
</pre>

</#list>


<hr />

<#include "footer.ftl">
