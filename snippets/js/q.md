# Q - Proxied Elements

> [https://www.phind.com/search?cache=yylyj12xcsnhid59iw2jsq8a](https://www.phind.com/search?cache=yylyj12xcsnhid59iw2jsq8a)
)
Create a function named q that takes a CSS selector as a parameter.
Inside the q function, use document.querySelector to select the element(s) based on the provided selector.
Create a proxy object that applies traps to the default behavior of the selected element(s). The traps will handle the specified functionalities and modify the context (this) accordingly.
Define the proxy methods for the specified functionalities:

- `del()`: To delete the selected element(s), use the remove() method.
- `hid()`: To hide the selected element(s), modify the style.display property to "none".
- `htm()`: To set the inner HTML of the selected element(s), modify the innerHTML property.
- `acl()`: To add a class to the selected element(s), use the classList.add() method.
- `dcl()`: To remove a class from the selected element(s), use the classList.remove() method.
- `hcl()`: To test if the selected element(s) has a class, use the classList.contains() method.
- `css()`: To add CSS styles to the selected element(s), modify the style property.
- `add()`: To add data to the selected element(s), use the dataset property.
- `ddd()`: To delete data from the selected element(s), use the delete operator on the dataset property.
- `gdd()`: To get data from the selected element(s), access the dataset property.
- 
Here's an example implementation of the q function with the specified proxy methods:

```js
function q(selector) {
  const element = document.querySelector(selector);

  const proxy = new Proxy(element, {
    get(target, prop) {
      if (prop === "del") {
        return () => {
          target.remove();
        };
      }
      if (prop === "hid") {
        return () => {
          target.style.display = "none";
        };
      }
      if (prop === "htm") {
        return (html) => {
          target.innerHTML = html;
        };
      }
      if (prop === "acl") {
        return (className) => {
          target.classList.add(className);
        };
      }
      if (prop === "dcl") {
        return (className) => {
          target.classList.remove(className);
        };
      }
      if (prop === "hcl") {
        return (className) => {
          return target.classList.contains(className);
        };
      }
      if (prop === "css") {
        return (styles) => {
          Object.assign(target.style, styles);
        };
      }
      if (prop === "add") {
        return (key, value) => {
          target.dataset[key] = value;
        };
      }
      if (prop === "ddd") {
        return (key) => {
          delete target.dataset[key];
        };
      }
      if (prop === "gdd") {
        return (key) => {
          return target.dataset[key];
        };
      }
      return target[prop];
    },
  });

  return proxy;
}   

```

So I'm still just playing around with this idea. But I wanted to save it  just frr incase I forget