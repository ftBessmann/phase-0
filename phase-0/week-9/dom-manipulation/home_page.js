// DOM Manipulation Challenge


// I worked on this challenge with Patrick DeWitte.
// This challenge took me [2] hours.

// Add your JavaScript calls to this page:

// Release 0:

var releaseZero = document.getElementById("release-0");
if (releaseZero) {
releaseZero.className += "done";
};

// document.getElementById("release-0").className += "done";

// Release 1:

document.getElementById("release-1").style.display = "none";


// Release 2:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2";

// Release 3:

document.getElementById("release-3").style.backgroundColor = '#955251';


// Release 4:

var elements = document.getElementsByClassName('release-4');

for (var i = 0; i< elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}

// Release 5:

var template = document.getElementById('hidden').content.cloneNode(true);
document.body.appendChild(template);

// Reflection
// 1. What did you learn about the DOM?
// The Document Object Model is the API through which JavaScript interacts with content within a website.
// The window object serves as the global object. A property is a variable stored under an object.
// A method is a function stored under an object.
// The DOM creates a hierarcy corresponding to the structure of each web document.
// In the HTML DOM, everything is a node:
// The document itself is a document node
// All HTML elements are element nodes
// All HTML attributes are attribute nodes
// Text inside HTML elements are text nodes
// Comments are comment nodes
// The document object is the root node of the HTML document and the "owner" of all other nodes.
// It can be accessed as window.document
// Each layout engine has a slightly different implementation of the DOM standard.
//
// 2. What are some useful methods to use to manipulate the DOM?
// document.createAttribute()			Creates an attribute node
// document.createComment()			Creates a Comment node with the specified text
// document.createElement()			Creates an Element node
// document.createTextNode()			Creates a Text node
// document.getElementById()	        Returns the element that has the ID attribute with the specified value
// document.getElementsByClassName()	Returns a NodeList containing all elements with the specified class name
// document.getElementsByName()	    Returns a NodeList containing all elements with a specified name
// document.getElementsByTagName()	    Returns a NodeList containing all elements with the specified tag name
// document.write()					Writes HTML expressions or JavaScript code to a document
// document.getElementById(id).style.property=new style  Changes the style of an HTML element