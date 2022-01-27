function addPageEditLink() {

    var ghEditPageElement = document.getElementById('ghEditPage');
    var editThisPageElement = document.getElementById('editThisPage');

    if (ghEditPageElement && ghEditPageElement.value && editThisPageElement) {
        var ghEditHref = ghEditPageElement.value;
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
