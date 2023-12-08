# JavaScript META programming

Here are a conference held about the topic: [https://www.youtube.com/watch?v=_5X2aB_mNp4](https://www.youtube.com/watch?v=_5X2aB_mNp4)

Meta programming in JavaScript refers to the concept where JavaScript code manipulates, generates, or analyzes other JavaScript code. It allows you to alter the default language behavior and make your code more expressive and flexible. This was largely facilitated with the release of ES6 (ECMAScript 2015), which introduced support for the `Reflect` and `Proxy` objects that allow you to do meta programming with ease [Source 0](https://www.freecodecamp.org/news/what-is-metaprogramming-in-javascript-in-english-please/), [Source 12](https://isamatov.com/metaprogramming-in-javascript/).

Let's break this down into a few key concepts and examples.

### Pre-ES6 Era of Meta programming

Before ES6, meta programming in JavaScript was limited. However, it was possible to use the `eval` function for code generation during runtime, as shown below:

```javascript
const blog = {
    name: 'freeCodeCamp'
}
console.log('Before eval:', blog);
const key = 'author';
const value = 'Tapas';
testEval = () => eval(`blog.${key} = '${value}'`);
// Call the function
testEval();
console.log('After eval magic:', blog);
```

In this example, the `eval` function is used to add an additional property to the `blog` object at runtime [Source 0](https://www.freecodecamp.org/news/what-is-metaprogramming-in-javascript-in-english-please/).

### ES6 and Beyond: Reflect and Proxy

With ES6, JavaScript introduced two key features for meta programming: the `Reflect` and `Proxy` objects.

#### Reflect

The `Reflect` object provides methods for interceptable JavaScript operations. These methods are the same as those of proxy handlers. Unlike most global objects, Reflect is not a constructor. All properties and methods of Reflect are static (like the Math object) [Source 10](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Meta_programming?retiredLocale=tr).

Here's an example of how to use `Reflect`:

```javascript
const employee = {
    firstName: 'Tapas',
    lastName: 'Adhikary'
};
let logHandler = {
    get: function(target, fieldName) {        
        console.log("Log: ", target[fieldName]);
        
        // Use the get method of the Reflect object
        return Reflect.get(target, fieldName);
    }
};
let func = () => {
    let p = new Proxy(employee, logHandler);
    p.firstName;
    p.lastName;
};
func();
```

In this example, the `Reflect.get` method is used to retrieve the property of an object [Source 0](https://www.freecodecamp.org/news/what-is-metaprogramming-in-javascript-in-english-please/).

#### Proxy

The `Proxy` object is used to define custom behavior for fundamental operations (e.g., property lookup, assignment, enumeration, function invocation, etc.). Here's an example of its use:

```javascript
const target = { age: 25 };
const handler = {
  set: function (obj, prop, value) {
    if (prop === "age" && (typeof value !== "number" || value < 0)) {
      throw new TypeError("Age must be a positive number");
    }
    obj[prop] = value;
  },
};
const proxy = new Proxy(target, handler);
proxy.age = 30; // Works fine
proxy.age = -5; // Throws a TypeError
```

In this example, the `Proxy` object is used to validate the age property before setting it on the target object [Source 3](https://codedamn.com/news/javascript/meta-programming-reflection).

### Symbols

Symbols are another feature introduced in ES6 that can be used for metaprogramming. A symbol is a unique and immutable data type that is often used to identify object properties. To create a symbol, you write `Symbol()` with an optional string as its description.

Symbols can also be used as keys for object properties. This allows us to add properties that we don't want to be iterated over in a `for...in` loop, or be included when we use `Object.getOwnPropertyNames` or `JSON.stringify`.

Here's an example of using a symbol as a property key:

```javascript
const sym = Symbol();
 
const oo = {
	[sym]: function () {
		return 'New Symbol as Key';
	}
}
console.log(oo.sym()); // 'New Symbol as Key'
```

In this example, a symbol is used as a key for an object property [Source 11](https://sabashavidze.io/blog/meta-programming).

These are some of the key concepts and examples of metaprogramming in JavaScript. With these tools, you can create dynamic and flexible


