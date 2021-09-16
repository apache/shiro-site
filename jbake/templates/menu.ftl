	<!-- Fixed navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm mb-4">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>get-started.html">Get Started</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation.html">Docs</a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown-webapps" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Web Apps
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown-webapps">
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>web.html">General</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>jaxrs.html">JAX-RS</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>web-features.html">Features</a></li>
              </ul>
            </li>

            <li><a class="nav-link" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>features.html">Features</a></li>

            <!-- integrations -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown-integrations" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Integrations
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown-integrations">
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>spring-boot.html">Spring</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>guice.html">Guice</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>integration.html">Third-Party Integrations</a></li>
              </ul>
            </li>

            <!-- Community -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown-community" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Community
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown-community">
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>forums.html">Community Forums</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>mailing-lists.html">Mailing Lists</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>articles.html">Articles</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>news.html">News</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>events.html">Events</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community.html">More</a></li>
              </ul>
            </li>

            <!-- About -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown-about" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                About
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown-about">
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>about.html">About</a></li>
                <li><a class="dropdown-item" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>security-reports.html">Vulnerability Reports</a></li>
              </ul>
            </li>
          </ul>

          <ul class="d-flex justify-content-end navbar-nav mb-2 mb-lg-0">
            <!-- The ASF -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown-asf" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Apache Software Foundation
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown-asf">
                <li><a class="dropdown-item" href="http://www.apache.org/">Apache Homepage</a></li>
                <li><a class="dropdown-item" href="http://www.apache.org/licenses/">License</a></li>
                <li><a class="dropdown-item" href="http://www.apache.org/foundation/sponsorship.html">Sponsorship</a></li>
                <li><a class="dropdown-item" href="http://www.apache.org/foundation/thanks.html">Thanks</a></li>
                <li><a class="dropdown-item" href="http://www.apache.org/security/">Security</a></li>
              </ul>
            </li>
          </ul>
          <#--
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          -->
        </div>
      </div>
    </nav>
