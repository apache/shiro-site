<#macro artifactTable versionObject={} >
<#assign version=versionObject.version />
<table style="width: 100%" class="table">
  <thead>
    <tr>
      <th class="col-md-1">Artifact</th>
      <th class="col-md-3">Maven Usage</th>
      <th class="col-md-3">Notes</th>
    </tr>
  </thead>

  <tbody>
  <#list versionObject.artifacts as artifactName>
  <#-- releases.yaml contains the artifactObject's names. We can just resolve them using eval. -->
  <#assign artifact=versions.artifacts[artifactName]>
  <tr>
    <#if (artifact.c)??>
        <#assign classifier="-"+artifact.c>
    <#else>
        <#assign classifier="">
    </#if>
    <#assign group=artifact.g?replace('.', '/') >

    <td style="white-space: nowrap;">
      <a href="https://repo1.maven.org/maven2/${group}/${artifact.a}/${version}/${artifact.a}-${version}${classifier!}.${artifact.type}">${artifact.a}</a><br/>
      (<a href="https://repo1.maven.org/maven2/${group}/${artifact.a}/${version}/${artifact.a}-${version}${classifier!}.${artifact.type}.asc">pgp</a>)
    </td>

    <td>
      <#if (artifact.gavAlt)?? >
        ${artifact.gavAlt}
      <#else>
        <pre><code class="xml language-xml">&lt;dependency&gt;
  &lt;groupId&gt;${artifact.g}&lt;/groupId&gt;
  &lt;artifactId&gt;${artifact.a}&lt;/artifactId&gt;
  &lt;version&gt;${version}&lt;/version&gt;
&lt;/dependency&gt;</code></pre>
      </#if>
    </td>

    <td>${(artifact.description)?replace('%version%', version)}</td>

  </tr>
  </#list>
  </tbody>
</table>
</#macro>
