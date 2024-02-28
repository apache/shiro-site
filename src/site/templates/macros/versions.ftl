<#assign latestRelease = data.get('releases.yaml').latestRelease>
<#assign latestAlphaRelease = data.get('releases.yaml').latestAlphaRelease>
<#assign versionInfo = data.get('releases.yaml').versionInfo>
<#assign releases = data.get('releases.yaml').releases>
<#assign oldReleases = data.get('releases.yaml').oldReleases>

<#assign artifacts = data.get('artifacts.yaml').artifacts>

<#macro shirov2>
  <#assign theDate = .now?date>
  <div class="admonitionblock important">
    <table>
      <tbody>
        <tr>
          <td class="icon">
            <i class="fa icon-important" title="Important"></i>
          </td>
          <td class="content">
            <div class="title">Shiro v2 alpha notice</div>
            <div class="paragraph">
              <p>As of ${theDate?iso_utc}, this version of Apache Shiro is in Alpha stage.</p>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</#macro>

<#macro shirov1 sourcepage="" hasv2=false>
  <#assign theDate = .now?date>
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
              <p>As of ${theDate?iso_utc}, Shiro v1 will soon be superseded by v2.<p>
              <#if (sourcepage)?? && (sourcepage)?is_string && (sourcepage) != "" && hasv2 == true>
              <#assign target=sourcepage?keep_after_last("/") />
                <p>
                  <a href="./v2/${target}">Read this page in the v2 documentation</a>.
                </p>
              </#if>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</#macro>
