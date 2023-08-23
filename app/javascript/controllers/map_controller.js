import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!
// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String
  }
  connect() {
    mapboxgl.accessToken = "pk.eyJ1IjoiYWhtZWQyNDEwMDAiLCJhIjoiY2xsMHNjdHdlMGh0cTNncDNxcHBjNTAxeiJ9.bG8M1yDWHBV5okrxB_z7Cw";
  var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [ -7.603869, 33.589886 ],
    zoom: 12
  });
  }
}
