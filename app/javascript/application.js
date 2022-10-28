// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap";

const popcorn = document.getElementById("popcorn-alert");
console.log(popcorn);
popcorn.addEventListener("mouseover", function( event ) {
  alert("Don't forget your popcorn")}, false);
