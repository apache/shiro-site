(function () {
  var storedTheme = localStorage.getItem("theme");

  var theme = storedTheme || "light";
  document.documentElement.setAttribute("data-theme", theme);

  function updateIcon(currentTheme) {
    var icon = document.getElementById("theme-icon");
    if (icon) {
      icon.textContent = currentTheme === "dark" ? "☀️" : "🌙";
    }
  }

  document.addEventListener("DOMContentLoaded", function () {
    var toggle = document.getElementById("theme-toggle");
    var currentTheme = document.documentElement.getAttribute("data-theme");

    updateIcon(currentTheme);

    if (toggle) {
      toggle.addEventListener("click", function () {
        var current = document.documentElement.getAttribute("data-theme");
        var next = current === "dark" ? "light" : "dark";
        document.documentElement.setAttribute("data-theme", next);
        localStorage.setItem("theme", next);
        updateIcon(next);
      });
    }
  });
})();
