<#assign latestRelease = data.get('releases.yaml').latestRelease>
<#assign latestAlphaRelease = data.get('releases.yaml').latestAlphaRelease>
<#assign versionInfo = data.get('releases.yaml').versionInfo>
<#assign releases = data.get('releases.yaml').releases>
<#assign oldReleases = data.get('releases.yaml').oldReleases>

<#assign artifacts = data.get('artifacts.yaml').artifacts>

<#macro shirov1 sourcepage="" hasv2=false>
  <div class="admonitionblock tip">
    <table>
      <tbody>
        <tr>
          <td class="icon">
            <div class="title">Handy Hint</div>
          </td>
          <td class="content">
            <div class="title">Shiro v1 version notice</div>
            <div class="paragraph">
              <p>As of February 28, 2024, Shiro v1 was superseded by v2.<p>
              <#if (sourcepage)?? && (sourcepage)?is_string && (sourcepage) != "" && hasv2 == true>
                <p>
                  <a href="./v2/${sourcepage}">Read this page in the v2 documentation</a>.
                </p>
              </#if>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</#macro>
