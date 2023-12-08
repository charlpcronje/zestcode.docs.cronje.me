# Auto Scroll to Bottom

Infinite scroll, these can take a long time to get to the bottom of (If there is a bottom)

To create a script in JavaScript that will scroll to the bottom of the page every second, you can use the `scrollTo()` method or the `scrollTop` property. Here's how you can do it:

## Using `scrollTo()` method:

```js
setInterval(() => {
  window.scrollTo(0, document.body.scrollHeight);
}, 1000);
```
This code uses the `setInterval()` function to execute the scroll code every second. The `scrollTo()` method is called with the x and y coordinates set to 0 and document.body.scrollHeight respectively. This will scroll the page to the bottom.


```js
setInterval(() => {
  document.documentElement.scrollTop = document.documentElement.scrollHeight;
}, 1000);
```

This code is similar to the previous one, but it uses the scrollTop property to set the scroll position instead. By setting document.documentElement.scrollTop to document.documentElement.scrollHeight, the page will scroll to the bottom.

Both approaches will continuously scroll the page to the bottom every second. You can choose the method that suits your needs best.

To stop an interval that is running, you need to have the interval ID. However, if you did not store the interval ID when you initiated it, it becomes more challenging. Here are a few approaches you can try:

1. Use a global variable: If you have a global variable that holds the interval ID, you can access it from anywhere in your code and use `clearInterval()` to stop the interval. For example:

```js
// Global variable to hold the interval ID
let intervalId;

// Start the interval
intervalId = setInterval(() => {
    // Code for the interval
}, 1000);

// Later, to stop the interval
clearInterval(intervalId);
```

2. Check for a condition to stop the interval: If there is a specific condition under which you want to stop the interval, you can check for that condition inside the interval callback function and use `clearInterval()` to stop it. For example:

```js
// Start the interval
setInterval(() => {
    // Code for the interval

    // Check for the condition to stop the interval
    if (condition) {
    clearInterval(this); // 'this' refers to the current interval
    }
}, 1000);
```

3. Use a timeout to stop the interval: If you don't have access to the interval ID, you can use a timeout to clear the interval after a certain period of time. For example:

```javascript
// Start the interval
setInterval(() => {
    // Code for the interval
}, 1000);

// Stop the interval after a specified time
setTimeout(() => {
    clearInterval(this); // 'this' refers to the current interval
}, 5000); // Stop after 5 seconds
```

Remember, it's always a good practice to store the interval ID when you initiate an interval so that you can easily stop it when needed.

## So use the following

```js
// Start the interval
const IId = setInterval(() => {
    window.scrollTo(0, document.body.scrollHeight);

    // Check for the condition to stop the interval (At the moment it will never reach)
    if (1 == 2) {
      clearInterval(this); // 'this' refers to the current interval
    }
}, 1000);

// To stop (clear) the interval 
clearInterval(IId);
```
