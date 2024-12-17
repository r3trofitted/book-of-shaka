import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification-center"
export default class extends Controller {
  static targets = [ "notification" ];

  notificationTargetConnected(target) {
    // target.togglePopover();
    // setTimeout(() => target.close(), 5000);
  }
}
