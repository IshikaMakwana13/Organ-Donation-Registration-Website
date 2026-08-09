/* ==========================================================================
   ISHIKA ORGAN DONATION WEBSITE - JAVASCRIPT CONTROLLERS
   ========================================================================== */

// Real-Time Live Clock Updater
function initLiveClock() {
  function update() {
    var el = document.getElementById("date_lbl");
    if (el) {
      var now = new Date();
      var options = {
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: true
      };
      el.innerText = now.toLocaleString('en-US', options);
    }
  }
  setInterval(update, 1000);
  update();
}

// Mobile Navigation Toggle
function toggleMobileNav() {
  var menu = document.getElementById("mainNavMenu");
  if (menu) {
    menu.classList.toggle("mobile_open");
  }
}

// Back to Top Scroll Behavior
window.addEventListener("scroll", function () {
  scrollFunction();
});

function scrollFunction() {
  var btn = document.getElementById("backToTop");
  if (!btn) return;
  if (document.body.scrollTop > 120 || document.documentElement.scrollTop > 120) {
    btn.style.display = "flex";
  } else {
    btn.style.display = "none";
  }
}

function topFunction() {
  window.scrollTo({
    top: 0,
    behavior: "smooth"
  });
}

// Feedback popup helpers
function openForm() {
  var form = document.getElementById("myForm");
  if (form) form.style.display = "block";
}

function closeForm() {
  var form = document.getElementById("myForm");
  if (form) form.style.display = "none";
}

// Initialize on DOM ready
document.addEventListener("DOMContentLoaded", function () {
  initLiveClock();
});
