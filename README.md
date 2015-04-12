# Apache Shiro Website Overview

The Apache Shiro website is a static content website accessible at http://shiro.apache.org

Site content is authored as Markdown and HTML files.  These files are scanned by a tool that applies a page template to each file's contents as necessary, and the rendered static .html files are output to a `publish` directory.

Publishing site changes is as simple as committing any changes in the `publish` directory to version control.  ASF infrastructure will see the commit and automatically push the changes to the ASF's production webservers.

## Generating and Publishing

The tool used to generate the static content is [SCMS](https://github.com/lhazlewood/scms).  Once scms is installed and in your `$PATH`, generating and publishing the site on the command line is easy.
 
The following example assumes you have SVN commit permissions to the `publish` directory, typically because your are an Apache Shiro project committer:
    
    cd site
    # This next command will take a few seconds, be patient :)
    scms trunk publish
    # Open up the local publish/index.html file in your web browser.  Ensure the changes reflect what you want. 
    #
    # This next commands will publish changes to live ASF web servers.  Be confident the changes are what you want:
    svn add .
    svn commit -m "my change description"

