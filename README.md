# About the website


The Apache Shiro website is a static content website accessible at http://shiro.apache.org

Site content is authored as Markdown and HTML files.  These files are scanned by a tool that applies a page template to each file's contents as necessary, and the rendered static .html files are output to a `dest_dir` directory.

To publish the site commit changes to the `asf-site` branch of this repository.  ASF infrastructure will see the commit and automatically push the changes to the ASF's production webservers.

## Generating and Publishing

The tool used to generate the static content is [SCMS](https://github.com/lhazlewood/scms).  Once scms is installed and in your `$PATH`, generating and publishing the site on the command line is easy.
 
The following example assumes you have commit permissions to the `apache/shiro-site` repository, typically because your are an Apache Shiro project committer:
    
    # clone both repo branches `asf-site` and `master`
    git clone https://github.com/apache/shiro-site -b asf-site shiro-site-publish
    git clone https://github.com/apache/shiro-site
    
    # build the site
    cd shiro-site
    scms . ../shiro-site-publish
    # Open up the local ../shiro-site-publish/index.html file in your web browser.  Ensure the changes reflect what you want. 

    # These next commands will publish changes to live ASF web servers.  Be confident the changes are what you want:
    cd ../shiro-site-publish
    git add .
    git commit -am "my change description"
    git push origin asf-site
    
    # It should only take a few minutes until the files are live 


