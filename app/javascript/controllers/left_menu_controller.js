import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['menu', 'subMenu']

  focusMenu(event) {
    this.menuTargets.forEach((menu) => {
      menu.classList.remove('left-menu-focused')
    })

    this.subMenuTargets.forEach((subMenu) => {
      const revealSubMenu = event.currentTarget.contains(subMenu)

      if (revealSubMenu) {
        subMenu.classList.remove('hidden')
      } else {
        subMenu.classList.add('hidden')
      }
    })

    event.currentTarget.classList.add('left-menu-focused')
  }
}
