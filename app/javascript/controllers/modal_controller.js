import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  open(event) {
    this.element.showModal();
  }

  close() {
    this.element.close();
  }
}
