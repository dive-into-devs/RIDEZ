import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookingform"
export default class extends Controller {
  static targets = ["btn", "fname", "lname", "startdate", "enddate" ]
  connect() {
    console.log("hey yo")

  }
  validate(e){
e.preventDefault()
if (this.fnameTarget.value == ""){
  this.fnameTarget.classList.add("validation")
} else if (this.lnameTarget.value == ""){
  this.lnameTarget.classList.add("validation")
} else if (this.startdateTarget.value == ""){
  this.startdateTarget.classList.add("validation")
} else if (this.enddateTarget.value == ""){
  this.enddateTarget.classList.add("validation")
} else {
  window.location.href = "/payment"
}

  }
}
