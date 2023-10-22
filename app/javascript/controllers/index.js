// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

$(document).ready(function() {
  $('.transaction-submit').click(function(event){
    alert('Your transaction has been submitted!');
    event.preventDefault(); // Prevent link from following its href
  });
});
