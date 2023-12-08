
---
## Selecting elements

Selecting one or several DOM elements to do something with is one of the most basic elements of jQuery. The equivalent to `$()` or `jQuery()` in JavaScript is [`querySelector()`](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector) or [`querySelectorAll()`](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll), which, just like with jQuery, you can call with a CSS selector.

```
// jQuery, select all instances of .box
$(".box");

// Instead, select the first instance of .box
document.querySelector(".box");

// …or select all instances of .box  
document.querySelectorAll(".box");
```

### Running a function on all elements in a selection[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#running-a-function-on-all-elements-in-a-selection](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#running-a-function-on-all-elements-in-a-selection)

`querySelectorAll()` returns a [NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList) containing all of the elements matching the query. Whereas you can run a function with jQuery on the entire selection of elements simply by calling the method on the jQuery object, however, you’ll have to iterate over the NodeList of elements using [`NodeList.forEach()`](https://developer.mozilla.org/en-US/docs/Web/API/NodeList/forEach) in vanilla JavaScript:

```
// with jQuery
// Hide all instances of .box
$(".box").hide();

// Without jQuery
// Iterate over the nodelist of elements to hide all instances of .box
document.querySelectorAll(".box").forEach(box => { box.style.display = "none" })
```

### Finding one element within another[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#finding-one-element-within-another](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#finding-one-element-within-another)

A common jQuery pattern is to select an element within another element using `.find()`. You can achieve the same effect, scoping the selection to an element’s children, by calling `querySelector` or `querySelectorAll` on an element:

```
// With jQuery
// Select the first instance of .box within .container
var container = $(".container");
// Later...
container.find(".box");

// Without jQuery
// Select the first instance of .box within .container
var container = document.querySelector(".container");
// Later...
container.querySelector(".box");
```

### Traversing the tree with `parent()`, `next()`, and `prev()`[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#traversing-the-tree-with-parent-next-and-prev](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#traversing-the-tree-with-parent-next-and-prev)

If you wish to traverse the DOM to select a subling or a parent element relative to another element, you can access them through `nextElementSibling`, `previousElementSibling` and `parentElement` on that element:

```
// with jQuery
// Return the next, previous, and parent element of .box
$(".box").next();
$(".box").prev();
$(".box").parent();

// Without jQuery
// Return the next, previous, and parent element of .box
var box = document.querySelector(".box");
box.nextElementSibling;
box.previousElementSibling;
box.parentElement;
```

## Working with events[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#working-with-events](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#working-with-events)

There’s a myriad of ways to listen to events in jQuery, but whether you’re using `.on()`, `.bind()`, `.live` or `.click()`, you’ll make do with the JavaScript equivalent `.addEventListener`:

```
// With jQuery
$(".button").click(function(e) { /* handle click event */ });
$(".button").mouseenter(function(e) {  /* handle click event */ });
$(document).keyup(function(e) {  /* handle key up event */  });

// Without jQuery
document.querySelector(".button").addEventListener("click", (e) => { /* ... */ });
document.querySelector(".button").addEventListener("mouseenter", (e) => { /* ... */ });
document.addEventListener("keyup", (e) => { /* ... */ });
```

### Event listening for dynamically added elements[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#event-listening-for-dynamically-added-elements](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#event-listening-for-dynamically-added-elements)

jQuery’s `.on()` method enables you to work with “live” event handlers, where you listen to events on objects that get dynamically added to the DOM. To accomplish something similar without jQuery you can attach the event handler on an element as you add it to the DOM:

```
// With jQuery
// Handle click events .search-result elements, 
// even when they're added to the DOM programmatically
$(".search-container").on("click", ".search-result", handleClick);

// Without jQuery
// Create and add an element to the DOM
var searchElement = document.createElement("div");
document.querySelector(".search-container").appendChild(searchElement);
// Add an event listener to the element
searchElement.addEventListener("click", handleClick);
```

### Triggering and creating events[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#triggering-and-creating-events](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#triggering-and-creating-events)

The equivalent to manually triggering events with `trigger()` can be achieved by calling [`dispatchEvent()`](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent). The `dispatchEvent()` method can be invoked on any element, and takes an `Event` as the first argument:

```
// With jQuery
// Trigger myEvent on document and .box
$(document).trigger("myEvent");
$(".box").trigger("myEvent");

// Without jQuery
// Create and dispatch myEvent
document.dispatchEvent(new Event("myEvent"));
document.querySelector(".box").dispatchEvent(new Event("myEvent"));
```

## Styling elements[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#styling-elements](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#styling-elements)

If you’re calling `.css()` on an element to change its inline CSS with jQuery, you’d use [`.style`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style) in JavaScript and assign values to its different properties to achieve the same effect:

```
// With jQuery
// Select .box and change text color to #000
$(".box").css("color", "#000");

// Without jQuery
// Select the first .box and change its text color to #000
document.querySelector(".box").style.color = "#000";
```

With jQuery, you can pass an object with key-value pairs to style many properties at once. In JavaScript you can set the values one at a time, or set the entire style string:

```
// With jQuery
// Pass multiple styles
$(".box").css({
  "color": "#000",
  "background-color": "red"
});

// Without jQuery
// Set color to #000 and background to red
var box = document.querySelector(".box");
box.style.color = "#000";
box.style.backgroundColor = "red";

// Set all styles at once (and override any existing styles)
box.style.cssText = "color: #000; background-color: red";
```

### `hide()` and `show()`[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#hide-and-show](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#hide-and-show)

The `.hide()` and `.show()` convenience methods are equivalent to accessing the `.style` property and setting `display` to `none` and `block`:

```
// With jQuery
// Hide and show and element
$(".box").hide();
$(".box").show();

// Without jQuery
// Hide and show an element by changing "display" to block and none
document.querySelector(".box").style.display = "none";
document.querySelector(".box").style.display = "block";
```

## Document ready[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#document-ready](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#document-ready)

If you need to wait for the DOM to fully load before e.g. attaching events to objects in the DOM, you’d typically use `$(document).ready()` or the common short-hand `$()` in jQuery. We can easily construct a similar function to replace it with by listening to `DOMContentLoaded`:

```
// With jQuery
$(document).ready(function() { 
  /* Do things after DOM has fully loaded */
});

// Without jQuery
// Define a convenience method and use it
var ready = (callback) => {
  if (document.readyState != "loading") callback();
  else document.addEventListener("DOMContentLoaded", callback);
}

ready(() => { 
  /* Do things after DOM has fully loaded */ 
});
```

## Working with classes[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#working-with-classes](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#working-with-classes)

You can easily access and work with classes through the [`classList`](https://developer.mozilla.org/en-US/docs/Web/API/Element/classList) property to toggle, replace, add, and remove classes:

```
// With jQuery
// Add, remove, and the toggle the "focus" class
$(".box").addClass("focus");
$(".box").removeClass("focus");
$(".box").toggleClass("focus");

// Without jQuery
// Add, remove, and the toggle the "focus" class
var box = document.querySelector(".box");
box.classList.add("focus");
box.classList.remove("focus");
box.classList.toggle("focus");
```

If you want to remove or add multiple classes you can just pass multiple arguments to `.add()` and `.remove()`:

```
// Add "focus" and "highlighted" classes, and then remove them
var box = document.querySelector(".box");
box.classList.add("focus", "highlighted");
box.classList.remove("focus", "highlighted");
```

If you’re toggling two classes that are mutually exclusive, you can access the `classList` property and call `.replace()` to replace one class with another:

```
// Remove the "focus" class and add "blurred"
document.querySelector(".box").classList.replace("focus", "blurred");
```

### Checking if an element has a class[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#checking-if-an-element-has-a-class](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#checking-if-an-element-has-a-class)

If you only want to run a function depending on if an element has a certain class, you can replace jQuery’s `.hasClass()` with `.classList.contains()`:

```
// With jQuery
// Check if .box has a class of "focus", and do something
if ($(".box").hasClass("focus")) {
  // Do something...
}

// Without jQuery
// Check if .box has a class of "focus", and do something
if (document.querySelector(".box").classList.contains("focus")) {
  // Do something...
}
```

## Network requests with .get() or .ajax()[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#network-requests-with-get-or-ajax](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#network-requests-with-get-or-ajax)

[`fetch()`](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API) lets you create network requests in a similar fashion to jQuery’s `ajax()` and `get()` methods. `fetch()` takes a URL as an argument, and returns a [Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) that you can use to handle the response:

```
// With jQuery
$.ajax({
    url: "data.json"
  }).done(function(data) {
    // ...
  }).fail(function() {
    // Handle error
  });

// Without jQuery
fetch("data.json")
  .then(data => {
    // Handle data
  }).catch(error => {
    // Handle error
  });
```

## Creating elements[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#creating-elements](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#creating-elements)

If you want to dynamically create an element in JavaScript to add to the DOM you can call [`createElement()`](https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement) on `document` and pass it a tag name to indicate what element you want to create:

```
// Create a div & span
$("<div/>");
$("<span/>");

// Create a div and a span
document.createElement("div");
document.createElement("span");
```

If you want to add some content to those elements, you can simply set the `textContent` property, or create a text node with [`createTextNode`](https://developer.mozilla.org/en-US/docs/Web/API/Document/createTextNode) and append it to the element:

```
var element = document.createElement("div");
element.textContent = "Text"
// or create a textNode and append it
var text = document.createTextNode("Text");
element.appendChild(text);
```

## Updating the DOM[#Copyhttps://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript/#updating-the-dom](https://tobiasahlin.com/blog/move-from-jquery-to-vanilla-javascript//#updating-the-dom)

If you’re looking to change the text of an element or to add new elements to the DOM chances are that you’ve come across `innerHTML()`, but using it may expose you to cross-site scripting (XSS) attacks. [Although you can work around it and sanitize the HTML](https://gomakethings.com/preventing-cross-site-scripting-attacks-when-using-innerhtml-in-vanilla-javascript/), there are some safer alternatives.

If you’re only looking to read or update the text of an element, you can use the [`textContent`](https://developer.mozilla.org/en-US/docs/Web/API/Node/textContent) property of an object to return the current text, or update it:

```
// With jQuery
// Update the text of a .button
$(".button").text("New text");
// Read the text of a .button
$(".button").text(); // Returns "New text"

// Without jQuery
// Update the text of a .button
document.querySelector(".button").textContent = "New text";
// Read the text of a .button
document.querySelector(".button").textContent; // Returns "New text"
```

If you’re constructing a new element, you can then add that element to another element by using the method on the parent `appendChild()`:

```
// Create div element and append it to .container
$(".container").append($("<div/>"));

// Create a div and append it to .container
var element = document.createElement("div");
document.querySelector(".container").appendChild(element);
```

Put together, here’s how to create a div, update its text and class, and add it to the DOM:

```
// Create a div
var element = document.createElement("div");

// Update its class
element.classList.add("box");

// Set its text
element.textContent = "Text inside box";

// Append the element to .container
document.querySelector(".container").appendChild(element);
```
