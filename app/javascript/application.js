// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', () => {
  const leftMenuLinks = document.querySelectorAll(
    '.js-left-menu a',
  );

  Array.prototype.forEach.call(leftMenuLinks, (leftMenuLink) => {
    leftMenuLink.addEventListener('click', (e) => {
      console.log(e.currentTarget);
      Array.prototype.forEach.call(leftMenuLinks, (leftMenuLink) => {
        leftMenuLink.classList.remove('left-menu-focused');
      });

      e.currentTarget.classList.add('left-menu-focused');
    });
  });
});
