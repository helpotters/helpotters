import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static values = {
    id: String
  }
  connect() {
    console.log("Hello")
    let modal = document.getElementById(this.idValue)

  }
  open(){
    let modal = document.getElementById(this.idValue)
    console.log("clicked")
    modal.classList.remove("hidden")
  }
  close() {
    let modal = document.getElementById(this.idValue)
    modal.classList.add("hidden")
  }

}
