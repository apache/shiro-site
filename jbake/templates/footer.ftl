		</div>
        <div id="push"></div>
    </div>

    <div class="footer-padding"></div>

    <div id="footer" class="footer">
      <div class="col-md-5">
        <div class="copyright-footer">
          <a href="https://www.apache.org/foundation/contributing.html">Donate to the ASF</a> |
          <a href="https://www.apache.org/licenses/LICENSE-2.0.html">License</a>
          <p>Copyright &copy; 2008-${.now?string('yyyy')} The Apache Software Foundation</p>
        </div>
      </div>

      <div class="social col-md-2">
        <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fab fa-twitter">&nbsp;</i></a>
        <a class="btn btn-primary" style="background-color: #3b5998;" href="#!" role="button"><i class="fab fa-facebook-f">&nbsp;</i></a>
        <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"><i class="fab fa-linkedin-in">&nbsp;</i></a>
      </div>

      <div class="col-md-2"></div>
      <div class="col-md-2 editThisPage" id="editThisPage">
        <#if (content.file)??><input type="hidden" id="ghEditPage" value="${content.file}"></input></#if>
        <div class="footer-shield"></div>
      </div>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/shiro.js"></script>

    <script type="text/javascript">
        docReady(
          addPageEditLink()
      );
    </script>

  </body>
</html>
