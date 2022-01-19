</div> <#-- end 'wrap' from header -->

    <div class="footer-padding"></div>

    <div class="container-fluid pt-2 border-top" id="custom-footer">
      <footer class="row justify-content-between align-items-center">
        <div class=" col-md-5">
          <div class="copyright-footer justify-content-start">
            <a href="https://www.apache.org/foundation/contributing.html">Donate to the ASF</a>&nbsp;|&nbsp;
            <a href="https://www.apache.org/licenses/LICENSE-2.0.html">License</a>&nbsp;
            <p class="text-muted">Copyright &copy; 2008-${.now?string('yyyy')} The Apache Software Foundation</p>
          </div>
        </div>

        <div class="d-flex justify-content-center col-md-1">
          <a class="btn btn-social"><span class="social-icon social-twitter"><i class="bi bi-twitter"></i></span></a>
          <a class="btn btn-social"><span class="social-icon social-facebook"><i class="bi bi-facebook"></i></span></a>
          <a class="btn btn-social"><span class="social-icon social-linkedin"><i class="bi bi-linkedin"></i></span></a>
        </div>

        <div class="d-flex justify-content-end col-md-4" id="editThisPage">
          <#if (content.sourceuri)??>
            <#assign
              extension="${content.file[content.file?last_index_of('.')..]}"
              sourcefile="${content.sourceuri?replace('.html', extension)}"
            />
          <input type="hidden" id="ghEditPage" value="${config.github_editlink_baseurl}/${sourcefile}"/>
          </#if>
        </div>

        <div class="d-flex col-md-2 justify-content-end" style="position: relative">
          <div class="footer-shield"></div>
        </div>
      </footer>
    </div>


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>highlight.js-11.2.0/highlight.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/shiro.js"></script>

    <script>
        docReady(
          addPageEditLink()
      );
    </script>
    <script>hljs.highlightAll();</script>

    </body>
</html>
