function addPageEditLink() {

    var ghRepo = "apache/shiro-site";
    var ghRelHref = "https://github.com/" + ghRepo + "/edit/main/";

    var ghEditPageElement = document.getElementById('ghEditPage');
    var editThisPageElement = document.getElementById('editThisPage');

    if (ghEditPageElement && ghEditPageElement.value && editThisPageElement) {
        var relGHPage = ghEditPageElement.value;

        var ghEditHref = ghRelHref + relGHPage;
        let editPageLink = document.createElement('a');
        editPageLink.setAttribute('href', ghEditHref);
        editPageLink.setAttribute('rel', 'nofollow');
        editPageLink.text = "Edit this page on GitHub";
        editThisPageElement.append(editPageLink);
    }
}

function docReady(fn) {
    // see if DOM is already available
    if (document.readyState === "complete" || document.readyState === "interactive") {
        // call on next available tick
        setTimeout(fn, 1);
    } else {
        document.addEventListener("DOMContentLoaded", fn);
    }
}
