// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', () => {
  // cookie privacy
  /* https://www.w3schools.com/js/js_cookies.asp */
  var setCookie = function(cname, cvalue, exdays, cpath) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=" + cpath;
  };

  const jsSetCookiePrivacy = document.querySelector('.js-set-cookie-privacy');
  if (jsSetCookiePrivacy) {
    jsSetCookiePrivacy.addEventListener('click', (e) => {
      e.preventDefault();

      setCookie('EU_COOKIE_LAW_CONSENT', 'yes', 3650, '/');

      document.querySelector('.js-cookie-privacy').classList.add('hidden');
    });
  }
});
