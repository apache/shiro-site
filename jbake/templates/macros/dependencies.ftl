<#macro dependencies anchorId deps=[] >
<ul class="nav nav-tabs" id="dependency-${anchorId}-tab" role="tablist">
  <#-- maven -->
  <li class="nav-item" role="presentation">
    <button
      class="nav-link active"
      id="maven-${anchorId}-tab"
      data-bs-toggle="tab"
      data-bs-target="#maven-${anchorId}"
      type="button"
      role="tab"
      aria-controls="maven-${anchorId}"
      aria-selected="true"
      >Maven</button>
  </li>
  <#-- gradle -->
  <li class="nav-item" role="presentation">
    <button
      class="nav-link"
      id="gradle-${anchorId}-tab"
      data-bs-toggle="tab"
      data-bs-target="#gradle-${anchorId}"
      type="button"
      role="tab"
      aria-controls="gradle-${anchorId}"
      aria-selected="false"
      >Gradle</button>
  </li>
  <#-- ivy -->
  <li class="nav-item" role="presentation">
    <button
      class="nav-link"
      id="ivy-${anchorId}-tab"
      data-bs-toggle="tab"
      data-bs-target="#ivy-${anchorId}"
      type="button"
      role="tab"
      aria-controls="ivy-${anchorId}"
      aria-selected="false"
      >Ivy</button>
  </li>
  <#-- Leiningen -->
  <li class="nav-item" role="presentation">
    <button
      class="nav-link"
      id="leiningen-${anchorId}-tab"
      data-bs-toggle="tab"
      data-bs-target="#leiningen-${anchorId}"
      type="button"
      role="tab"
      aria-controls="leiningen-${anchorId}"
      aria-selected="false"
    >Leiningen</button>
  </li>
</ul>
<div class="tab-content" id="dependency-${anchorId}-tab-content">
  <div
    class="tab-pane fade show active"
    id="maven-${anchorId}"
    role="tabpanel"
    aria-labelledby="maven-${anchorId}-tab"
    >
    <pre><code class='xml language-xml'><#list deps as dep>&lt;dependency&gt;
  &lt;groupId&gt;${dep.g}&lt;/groupId&gt;
  &lt;artifactId&gt;${dep.a}&lt;/artifactId&gt;
  &lt;version&gt;${dep.v}&lt;/version&gt;
&lt;/dependency&gt;
</#list></code></pre>
  </div>
  <#-- gradle -->
  <div
    class="tab-pane fade"
    id="gradle-${anchorId}"
    role="tabpanel"
    aria-labelledby="gradle-${anchorId}-tab"
    >
    <pre><code class='groovy language-groovy'><#list deps as dep>compile '${dep.g}:${dep.a}:${dep.v}'
</#list></code></pre>
  </div>
  <#-- ivy -->
  <div
    class="tab-pane fade"
    id="ivy-${anchorId}"
    role="tabpanel"
    aria-labelledby="ivy-${anchorId}-tab"
    >
    <pre><code class='xml language-xml'><#list deps as dep>&lt;dependency org="${dep.g}" name="${dep.a}" rev="${dep.v}"/&gt;
</#list></code></pre>
  </div>
  <#-- Leiningen -->
  <div
    class="tab-pane fade"
    id="leiningen-${anchorId}"
    role="tabpanel"
    aria-labelledby="leiningen-${anchorId}-tab"
    >
    <pre><code class='clojure language-clojure'><#list deps as dep>[${dep.g}/${dep.a} "${dep.v}"]
</#list></code></pre>
  </div>
</div>
</#macro>
