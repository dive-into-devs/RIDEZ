import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = ["fname", "lname", "startdate", "enddate", "btn" ]
  connect() {
    console.log("connected");
  }
  validate(e){
    e.preventDefault();
    if (this.fnameTarget.value == ""){
      this.fnameTarget.classList.add("validation")
    }
    else if (this.lnameTarget.value == ""){
      this.lnameTarget.classList.add("validation")
    }
    else if (this.startdateTarget.value == ""){
      this.startdateTarget.classList.add("validation")
    }
    else if (this.enddateTarget.value == ""){
      this.enddateTarget.classList.add("validation")
    }
    else{
      window.location.href = "/confirmation"
    }

  }
}
