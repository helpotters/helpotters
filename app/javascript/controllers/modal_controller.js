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
    let modal = document.getElementById(this.idValue)

  }
  open() {
    let modal = document.getElementById(this.idValue)

    modal.classList.remove("hidden")
  }
  close() {
    let modal = document.getElementById(this.idValue)
    console.log("closing")
    modal.classList.add("hidden")
  }

}
