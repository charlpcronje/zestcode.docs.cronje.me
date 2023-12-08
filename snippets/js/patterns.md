# JavaScript Design Patterns

- [https://github.com/jherr/ts-patterns](https://github.com/jherr/ts-patterns)

Design patterns are solutions to recurring problems in software application development. They are best practices implemented by developers to solve general problems that occur during the software development phase. The concept of design patterns was popularized by a book published in 1994 by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, known as the Gang of Four (GoF)

Design patterns can be classified into three main categories: Creational, Structural, and Behavioral

- Creational patterns are concerned with the way objects are created. Singleton is a popular creational pattern that ensures a class has only one instance and provides a global access point to this instance
- Structural patterns are about how classes and objects are composed to form a larger structure. The Bridge and Decorator are examples of structural patterns
- Behavioral patterns are about how objects interact without being tightly coupled. The Observer and Memento are examples of behavioral Patterns

JavaScript and TypeScript are two popular languages where these patterns are used. JavaScript is a high-level scripting programming language for creating dynamic and interactive content in web applications. It supports multiple programming paradigms including declarative programming, imperative programming, functional programming, and object-oriented programming. TypeScript, on the other hand, is an extension of JavaScript, providing additional features like support for enumerated types and interfaces

## Singleton Pattern

Here are examples of how the Singleton pattern can be implemented in both JavaScript and TypeScript:

### JavaScript:

```js
const Config = {
  start: () => console.log('App has started'),
  update: () => console.log('App has updated'),
}
Object.freeze(Config)
Config.start() // "App has started"
Config.update() // "App has updated"
Config.name = "Robert" // Will not work as the object is frozen
console.log(Config) // { start: [Function: start], update: [Function: update] }
```


### TypeScript:

```ts
class Config {
    constructor() {}
    start(){ console.log('App has started') }  
    update(){ console.log('App has updated') }
}
  
const instance = new Config()
Object.freeze(instance)
```

The Singleton design pattern in JavaScript uses the `Object.freeze()` method to prevent the modification of the object. This is a unique JavaScript feature for creating immutable objects. In TypeScript, the same Singleton pattern is implemented using a class.

Understanding and implementing design patterns can significantly improve the quality of your code, making it more reusable, efficient, and maintainable. However, it's crucial to remember that the specific implementation of the patterns may vary depending on many different factors, and applying the wrong pattern to a given problem could lead to undesirable effects.

Design patterns are solutions to common problems that developers encounter during the software development phase. They are classified into three main categories: Creational, Structural, and Behavioral

## 1. Creational Patterns
These patterns deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. The basic form of object creation could result in design problems or add complexity to the design. Creational design patterns solve this problem by controlling the object creation process. Some examples of this kind of design patterns are:

### Singleton
Ensures a class has only one instance and provides a global point of access to it

### Factory Method

Provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created

### Abstract Factory
Provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classes

### Builder

Separates the construction of a complex object from its representation so that the same construction process can create different representations[Source 4].

## 2. Structural Patterns

These patterns concern class and object composition. They help ensure that when one part of a system changes, the entire structure of the system doesn't need to do the same. They also help in recasting parts of the system which don't fit a particular purpose into those that. Examples include:

### Adapter
Allows the interface of an existing class to be used as another interface

### Bridge
Decouples an abstraction from its implementation so that the two can vary independently

### Composite
Composes objects into tree structures to represent part-whole hierarchies

### Decorator
Attaches additional responsibilities to an object dynamically
   
## 3. Behavioral Patterns: 
These patterns are about identifying common communication patterns between objects and realize these patterns. Examples include:

### Observer
Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically

### Strategy
Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from the clients that use it

### Command
Encapsulates a request as an object, thereby letting users parameterize clients with queues, requests, and operations

### Iterator
Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation

The specific implementation of these patterns may vary depending on the programming language used. However, the overall structure and principles remain the same across languages. The main goal of using design patterns is to enhance code readability and reusability, reduce errors, and make the code more maintainable, scalable, and efficient