// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
// import "../plugins/flatpickr"
import { mealscards, mealsdays } from "../components/select_meals"

// Internal imports, e.g:
import { initVideoCall } from '../components/init_videocall'

// import { initSelect2 } from '../components/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initVideoCall();
  mealscards();
  mealsdays();

  initSweetalert('#sweet-alert-demo', {
    icon: "https://res.cloudinary.com/dyrbktlhi/image/upload/v1598363920/logo.png",
    text: "Your order is confirmed",
    button: "OK"
  })

});





