import { Controller } from "@hotwired/stimulus"
import { visit } from "@hotwired/turbo"

export default class extends Controller {
  connect() {
  }

  goto(event) {
    visit(window.location.pathname + `#${imageId}`, { action: "replace" });
  }
}
