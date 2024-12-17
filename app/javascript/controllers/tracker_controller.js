import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tracker"
export default class extends Controller {
  static targets = [ "increaser", "decreaser" ];

  adjust(event) {
    if (event.target.checked) {
      this.increaserTarget.form.requestSubmit();
    } else {
      this.decreaserTarget.form.requestSubmit();
    }
  }
}
