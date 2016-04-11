// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
bodyElement = $('body')

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
$("h1").css("color","blue")
$("h1").css("border","solid")
$("h1").css("visibility","hidden")
$("h1").css("visibility","visible")

$("div.mascot").html("<h1> Fiery Skippers 2016 </h1>");

//RELEASE 5: Event Listener
// Add the code for the event listener here
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/FierySkipper.JPG/300px-FierySkipper.JPG')
  })
  $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery?
jQuery is a JavaScript library.

What does jQuery do for you?
It helps you manipulate an html doc and helps with event handling, animation, etc.

What did you learn about the DOM while working on this challenge?
I learned about selecting elements inside the DOM with jQuery, really neat and did not realize that it had this capability.
*/