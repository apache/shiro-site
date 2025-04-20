<#include "header.ftl">

<#import "macros/artifacttable.ftl" as artifacttable>

<#if (content.title)??>
  <div class="page-header">
    <h1>${content.title}</h1>
  </div>
<#else></#if>

<p><@content.body?interpret /></p>

<#-- if a release is given, assume it is the current release (download.html). -->
<#if ((content.releases).versions)??>
  <#assign displayReleases=((content.releases).versions)![] />
  <#assign downloadUrl="https://www.apache.org/dyn/closer.lua/shiro/" />
<#else>
  <#-- if not releases are given using :jbake-release:, assume oldReleases (release-archive.html). -->
  <#assign displayReleases=versions.oldReleases />
  <#assign downloadUrl="https://archive.apache.org/dist/shiro/" />
</#if>

<#assign downloadHashUrl="https://downloads.apache.org/shiro/" />

<p>
  <ul>
  <#list displayReleases as version>
    <#assign release=versions.releases[version] />
    <li><a href="#${release.version?replace(".", "")}">Apache Shiro Release v${release.version}</a></li>
    <ul>
      <li><a href="#${release.version?replace(".", "")}Source">${release.version} Source Code Distribution</a></li>
      <li><a href="#${release.version?replace(".", "")}Git">${release.version} Git Source repository</a></li>
      <li><a href="#${release.version?replace(".", "")}Binary">${release.version} Binaries</a></li>
    </ul>
  </#list>
  </ul>
</p>



<#list displayReleases as version>
  <#assign release=versions.releases[version] />
  <section id="${release.version?replace(".", "")}">
  <h2>Release ${release.version}</h2>

  <h3 id="${release.version?replace(".", "")}Source">${release.version} Source Code Distribution</h3>

  <p>The source bundle requires JDK 11+ and Maven 3.8+ to build:

  <code><a class="external-link" href="${downloadUrl}${release.version}/shiro-root-${release.version}-source-release.zip">shiro-root-${release.version}-source-release.zip</a></code>
    (<a class="external-link"
        href="${downloadHashUrl}${release.version}/shiro-root-${release.version}-source-release.zip.asc.txt">pgp</a>, <a
            class="external-link"
            href="${downloadHashUrl}${release.version}/shiro-root-${release.version}-source-release.zip.sha512">sha512</a>)
  </code>

  <p>Associated documentation can be found <a href="documentation.html" title="Documentation">here</a></p>

  <h3 id="${release.version?replace(".", "")}Git">${release.version} Git Source repository</h3>

  <p>The source can be cloned anonymously from Git with this command:</p>
  <pre><code class="language-bash bash">git clone https://github.com/apache/shiro.git
git checkout shiro-root-${release.version}
</code>
</pre>

  <h3 id="${release.version?replace(".", "")}Binary">${release.version} Binaries</h3>

  <p>If you don't want to build yourself, you can download pre-built binaries from Maven Central, just click the link in the "Artifact" column. If you would like
    acquire Shiro through Maven, then please use the markup listed under "Maven Usage"</p>

  <p>
  </p>

  <@artifacttable.artifactTable versionObject=release />

  </section>

</#list>


<hr />

<#include "footer.ftl">
