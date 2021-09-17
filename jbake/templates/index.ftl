<#include "header.ftl">

<div class="row">

  <div class="col-md-9 col-md-pull-3">

    <div class="p-5 bg-light rounded-3 mb-4 shadow-sm">
      <b>Apache Shiro&trade;</b> is a powerful and easy-to-use Java security framework that performs authentication,
      authorization, cryptography, and session management. With Shiro&#8217;s easy-to-understand API, you can
      quickly and easily secure any application &#8211; from the smallest mobile applications to the largest web
      and enterprise applications.
    </div>

    <div class="row row-padded">
      <div class="col-md-6 col-sm-6">
        <h1>Getting Started</h1>

        <ul>
          <li><a href="https://www.infoq.com/articles/apache-shiro">What is Apache Shiro?</a></li>
          <li><a href="10-minute-tutorial.html">10 Minute Tutorial</a></li>
          <li><a href="articles.html">More articles...</a></li>
        </ul>
      </div>

      <div class="col-md-6 col-sm-6 col-padded-top col-center">
        <div style="width: 100%; max-width: 272px; display: inline-block; text-align: center; margin-left: 50px; padding-bottom: 15px;">
          <iframe width="310" height="233"
                  src="https://www.youtube.com/embed/YJByiDvOhsc?rel=0"
                  allowfullscreen>
          </iframe>
        </div>
      </div>
    </div>

    <div class="row row-padded">
      <div class="col-md-6 col-sm-6 panel mb-3">
        <div class="panel-heading authentication">
          <h2 class="panel-title"> Authentication </h2>
        </div>
        <div class="card-body shadow-sm pb-2">
          <p>Support logins across one or more pluggable data sources (LDAP, JDBC, Active Directory...</p>
          <a href="authentication-features.html"><span class="more">Read More &gt;&gt;&gt;</span></a>
        </div>
      </div>

      <div class="col-md-6 col-sm-6 panel mb-3">
        <div class="panel-heading authorization">
          <h2 class="panel-title"> Authorization</h2>
        </div>
        <div class="card-body shadow-sm pb-2">
          <p>Perform access control based on roles or fine grained permissions, also using plug...</p>
          <a href="authorization-features.html"><span class="more">Read More &gt;&gt;&gt;</span></a>
        </div>
      </div>
    </div>

    <div class="row row-padded">
      <div class="col-md-6 col-sm-6 panel mb-3">
        <div class="panel-heading cryptography">
          <h2 class="panel-title"> Cryptography</h2>
        </div>
        <div class="card-body shadow-sm pb-2">
          <p>Secure data with the easiest possible Cryptography API&#8217;s available, giving you...</p>
          <a href="cryptography-features.html"><span class="more">Read More &gt;&gt;&gt;</span></a>
        </div>
      </div>

      <div class="col-md-6 col-sm-6 panel mb-3">
        <div class="panel-heading session-management">
          <h2 class="panel-title"> Session Management</h2>
        </div>
        <div class="card-body shadow-sm pb-2">
          <p>Use sessions in any environment, even outside web or EJB containers. Easily...</p>
          <a href="session-management-features.html"><span class="more">Read More &gt;&gt;&gt;</span></a>
        </div>
      </div>
    </div>

    <div class="row row-padded">
      <div class="col-md-6 col-sm-6 panel mb-3">
        <div class="panel-heading web-integration">
          <h2 class="panel-title"> Web Integration</h2>
        </div>
        <div class="card-body shadow-sm pb-2">
          <p>Save development time with innovative approaches that easily handle web specific...</p>
          <a href="web-features.html"><span class="more">Read More &gt;&gt;&gt;</span></a>
        </div>
      </div>

      <div class="col-md-6 col-sm-6 panel mb-3">
        <div class="panel-heading integrations">
          <h2 class="panel-title"> Integrations</h2>
        </div>
        <div class="card-body shadow-sm pb-2">
          <p>API&#8217;s giving you power and simplicty beyond what Java provides by default...</p>
          <a href="integration.html"><span class="more">Read More &gt;&gt;&gt;</span></a>
        </div>
      </div>
    </div>

  </div>

  <div class="col-md-3 col-md-push-9">

    <div class="hidden-xs hidden-sm">
      <div class="d-grid gap-2">
        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>download.html"
           class="btn btn-success btn-lg" style="margin-bottom: 30px;">
          Download
        </a>
      </div>

      <div class="panel panel-primary">
        <div class=" panel-heading" style="text-align: center;">
          <h3>Latest news:</h3>
        </div>

        <div class="card-body">
        <#list posts as post>
        <#if (post.status == "published"  && post?index >= (currentPageNumber-1) * config.index_posts_per_page?eval && post?index < currentPageNumber * config.index_posts_per_page?eval)>
          <div>
            <a href="${post.uri}"><small>${post.title}</small></a>
            <p><small>by ${(post.author)!"The Apache Shiro Team"} on ${post.date?string("yyyy-MM-dd")}</small></p>
          </div>
        </#if>
        </#list>
          <hr/>
          <nav aria-label="News Pagination">
            <ul class="pagination">
              <#if (currentPageNumber > 1)>
              <li class="page-item"><a class="page-link" href="<#if (content.rootpath)??>${content.rootpath}</#if>/${(currentPageNumber==2)?then('', currentPageNumber-1)}">Previous</a></li>
              </#if>
              <#if (currentPageNumber > 1 && currentPageNumber != numberOfPages)>
              <li class="page-item"><a class="page-link" href="${currentPageNumber}">${currentPageNumber}</a></li>
              </#if>
              <#if (currentPageNumber < numberOfPages)>
              <li class="page-item"><a class="page-link" href="<#if (content.rootpath)??>${content.rootpath}</#if>${currentPageNumber + 1}">Next</a></li>
              </#if>
              <li class="page-item"><a class="page-link" href="${content.rootpath}${config.archive_file}">archive</a></li>
            </ul>
            <#--
            <div class="container-fluid col-md1 justify-content-center">
              Page: ${currentPageNumber}/${numberOfPages}
            </div>
            -->
          </nav>
      </div>

      <div class="panel panel-primary">
        <div class="panel-heading" style="text-align: center;">
          <h3>Popular Guides:</h3>
        </div>

        <div class="card-body">
          <div>
            <a href="java-authentication-guide.html">Java Authentication Guide</a>
            <p><small>Learn how Shiro securely verifies identities.</small></p>
          </div>
          <div>
            <h3><a href="java-authorization-guide.html">Java Authorization Guide</a></h3>
            <p>Learn how Shiro handles permissions, roles and users.</p>
          </div>
          <div>
            <h3><a href="webapp-tutorial.html">Web App Tutorial</a></h3>
            <p>Step-by-step tutorial for securing a web application with Apache Shiro.</p>
          </div>
          <div>
            <a href="https://www.infoq.com/minibooks/apache-shiro-ee-7">Apache Shiro Mini Book</a>
            <p>A free InfoQ mini-book by <small><a href="https://twitter.com/nebrasslamouchi">Nebrass Lamouchi</a></small></p>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</div>
<div id="push"></div>


<!-- before footer -->
<#include "footer.ftl">
