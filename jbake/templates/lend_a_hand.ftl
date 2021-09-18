<#include "header.ftl">

<#if (content.title)??>
  <div class="page-header">
    <h1>${content.title}</h1>
  </div>
<#else></#if>

<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

<p>TODO</p>

<h2><a id="Lendahandwithdocumentation"></a>Lend a hand with documentation</h2>

<p>While we hope this documentation helps you with the work you're doing with Apache Shiro,
  the community is improving and expanding the documentation all the time.
  If you'd like to help the Shiro project, please consider correcting, expanding, or adding documentation where you see a need.
  Every little bit of help you provide expands the community and in turn improves Shiro. </p>

<p>The easiest way to contribute your documentation is to submit a pull-request by clicking on the <code>Edit</code> link below,
  or send it to the <a href="mailing-lists.html" title="Mailing Lists">User Mailing List</a>.</p>

<hr />

<#include "footer.ftl">
