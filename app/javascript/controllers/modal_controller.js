import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static values = {
    id: String
  }
  disconnect() {
    console.log("Goodbye")
  }
  connect() {
    console.log("Hello")
  }
  open(event) {
    event.preventDefault(); // Prevent default anchor tag behavior
    let modal = document.getElementById(this.idValue)

    modal.classList.add("modal-open")
    modal.classList.remove("hidden")
    // Prevent history change
    history.replaceState({}, document.title, window.location.href)
  }
  close() {
    let modal = document.getElementById(this.idValue)
    modal.classList.remove("model-open")
    modal.classList.add("hidden")
  }

}
