function addPageEditLink() {

    var ghRepo = "apache/shiro-site";
    var ghRelHref = "https://github.com/" + ghRepo + "/edit/main/";

    var ghEditPageElement = $( "#ghEditPage" );
    var editThisPageElement = $(".editThisPage");

    if (ghEditPageElement && ghEditPageElement.val() && editThisPageElement) {
        var relGHPage = ghEditPageElement.val();

        var ghEditHref = ghRelHref + relGHPage;
        editThisPageElement.append("<a href='" + ghEditHref + "'>Edit this Page on Github</a>");
    }
}
