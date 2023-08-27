import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="formv"
export default class extends Controller {
  static targets = ["button", "monthinput", "yearinput", "cardinput", "cvvinput" ]
  validate(e) {
    e.preventDefault();
    // console.log("ddd")
    // console.log(this.cvvinputTarget.value)
    // this.cvvinputTarget.classList.add("d-none")
    if (this.cvvinputTarget.value == "") {
      this.cvvinputTarget.classList.add("validation")
      console.log("wrong")
    } else if (this.cardinputTarget.value == "") {
      this.cardinputTarget.classList.add("validation")
      console.log("wrong")
    } else if (this.yearinputTarget.value == "Year") {
      this.yearinputTarget.classList.add("validation")
      console.log("wrong")
    } else if (this.monthinputTarget.value == "Month") {
      this.monthinputTarget.classList.add("validation")
      console.log("wrong")
    } else {
      window.location.href = "/confirmation"
    }
  }


}
