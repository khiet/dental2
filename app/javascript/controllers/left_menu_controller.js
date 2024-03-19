import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.dataset.action = "click->left-menu#focusLeftMenu"
  }

  focusLeftMenu(event) {
    const links = event.currentTarget.querySelectorAll('a');
    links.forEach((link) => {
      link.classList.remove('left-menu-focused')
    })

    event.target.classList.add('left-menu-focused')
  }
}
