	<!-- Fixed navbar -->
    <div class="navbar navbar-default" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>get-started.html">Get Started</a></li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation.html">Docs</a></li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Web Apps <b class="caret"></b>
              </a>

              <ul class="dropdown-menu">
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/web.html">General</a></li>
                ##                        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/jaxrs.html">JAX-RS</a></li>
                <li class="divider"></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/web-features.html">Features</a></li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Integrations <b class="caret"></b>
              </a>

              <ul class="dropdown-menu">
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/spring-boot.html">Spring</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/guice.html">Guice</a></li>
                <li class="divider"></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/integration.html">Third-Party Integrations</a></li>
              </ul>
            </li>

            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/features.html">Features</a></li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Community <b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/forums.html">Community Forums</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/mailing-lists.html">Mailing Lists</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/articles.html">Articles</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/news.html">News</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/events.html">Events</a></li>
                <li class="divider"></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/community.html">More</a></li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                About <b class="caret"></b>
              </a>

              <ul class="dropdown-menu">
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/about.html">About</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/security-reports.html">Vulnerability Reports</a></li>
              </ul>
            </li>

          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="http://www.apache.org/" class="dropdown-toggle" data-toggle="dropdown">
                Apache Software Foundation <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="http://www.apache.org/">Apache Homepage</a></li>
                <li><a href="http://www.apache.org/licenses/">License</a></li>
                <li><a href="http://www.apache.org/foundation/sponsorship.html">Sponsorship</a></li>
                <li><a href="http://www.apache.org/foundation/thanks.html">Thanks</a></li>
                <li><a href="http://www.apache.org/security/">Security</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container">

