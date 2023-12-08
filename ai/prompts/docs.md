
# Documentation Prompt

This is a comprehensive documentation prompt for single methods entire files

```md
**Subject**: Comprehensive Documentation Request for [Feature/Module/Component]

**Details**:

**Objective**: Briefly describe what you want to achieve with this documentation.

**Scope**: Outline the specific areas or components that the documentation should cover.

**Function Descriptions**:

- **Requirement**: Every function must be described in detail.
- **How it Works**: Explain the inner workings of the function.
- **Purpose**: State the reason why the function exists and what problem it solves.
- **Format**: Specify the format you'd like the documentation in (Markdown, PDF, etc.)

**Code Blocks**: Indicate if you want code examples and in what programming language.

**References**: State if you want references to be included for each section or code block.

The next prompt will contain the code to document, after that the next code will follow for the same. The code will be supplied in Template literals with with the output expected:
C+ document to class level no lower
F+ document to  Function and method level no lower
B+ document to code block level no lower
l+ document to line level no lower
e+ document to single expression level no lower
The + after each level mean the documentation depth,
+ is give an overview
++ explain everything
+++ Explain everything comprehensively with examples
++++ Leave not stone unturned, cover everything last thing everything does and why and how and about efficiency.
So just answer with, Please supply the code you want documented. 
```

## Code Implementation

So to use the prompt, give it some code in a code block, specify the language and the specify the out you want. To get the most comprehensive documentation, use the `++++` level of documentation. So for example, if you want to document a function, you would use the `F++++` level of documentation. If you want to document a class, you would use the `C++++` level of documentation. If you want to document a code block, you would use the `B++++` level of documentation. If you want to document a line, you would use the `l++++` level of documentation. If you want to document an expression, you would use the `e++++` level of documentation. Or in combination, you can use the `C++++F++++B++++l++++e++++` level of documentation. The more `+` you use, the more comprehensive the documentation will be. So blow it will be the code implementation of the prompt.

```js C++++F++++B++++l++++e++++
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  get name() {
    return this.name;
  }

  set name(name) {
    this.name = name;
  }

  get age() {
    return this.age;
  }

  set age(age) {
    this.age = age;
  }

  sayHello() {
    console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
  }

  regexTest() {
    const regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    const str = 'charl@zestcode.digital';
    const found = str.match(regex);
    console.log(found);
  }
}
```

## Output

Certainly, Mr. Cronje. Below is a comprehensive documentation for the `Person` class. The documentation goes down to the method level, covering everything in detail.

---

# Documentation for Person Class [JS-1]
**File Name**: `Person.js`

## Overview
The `Person` class encapsulates the properties and behaviors that define a person entity in the context of the application. It contains fields for storing the person's name and age and provides methods to manipulate these properties and carry out certain actions like saying hello or testing regex patterns.

---

## Class Definition [JS-1-CL-1]

### `class Person`
Defines a class named `Person`.

```javascript
class Person {
  ...
}
```

---

## Constructor [JS-1-FN-1]

### `constructor(name, age)`
Initializes a new instance of the `Person` class.

- **Parameters**
  - `name` (String): The name of the person.
  - `age` (Number): The age of the person.
- **How it Works**: It takes `name` and `age` as parameters and initializes the corresponding class properties.

```javascript
constructor(name, age) {
  this.name = name;
  this.age = age;
}
```

---

## Properties

### `name` [JS-1-FN-2]

#### Getter: `get name()`
Returns the current name of the person.

- **Returns**: `(String)`: The name of the person.
  
```javascript
get name() {
  return this.name;
}
```

#### Setter: `set name(name)`
Sets the name of the person.

- **Parameters**: 
  - `name` (String): The new name to set.
  
```javascript
set name(name) {
  this.name = name;
}
```

### `age` [JS-1-FN-3]

#### Getter: `get age()`
Returns the current age of the person.

- **Returns**: `(Number)`: The age of the person.

```javascript
get age() {
  return this.age;
}
```

#### Setter: `set age(age)`
Sets the age of the person.

- **Parameters**: 
  - `age` (Number): The new age to set.

```javascript
set age(age) {
  this.age = age;
}
```

---

## Methods

### `sayHello()` [JS-1-FN-4]
Displays a greeting message including the person's name and age.

- **How it Works**: It uses JavaScript's `console.log()` method to print the greeting message.

```javascript
sayHello() {
  console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
}
```

### `regexTest()` [JS-1-FN-5]
Tests a specific regex pattern against an email string and logs the result.

- **How it Works**: It uses JavaScript's `String.match()` method to find matches based on the regex pattern.
- **Purpose**: To demonstrate regex matching.

```javascript
regexTest() {
  const regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  const str = 'charl@zestcode.digital';
  const found = str.match(regex);
  console.log(found);
}
```

### Documentation for Email Validation Regex [JS-2]

## Overview [JS-2-EXPR-1]
The given regular expression is designed to match a string against the standard email format. It validates whether the given string is a syntactically correct email address according to common email standards.

---

## Regular Expression Definition [JS-2-EXPR-2]
The regex pattern is defined as follows:

```javascript
const regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
```

---

## Expression Components [JS-2-EXPR-3]

### Start Anchor `^`
- **Purpose**: Specifies the start of the line.
- **Effect**: The matching will start from the beginning of the string.

### Character Set `[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+`
- **Purpose**: Defines the set of valid characters for the username part of the email.
- **Effect**: One or more characters from this set must appear at the beginning of the email address.

### At Symbol `@`
- **Purpose**: Matches the "@" symbol in the email.
- **Effect**: Separates the user name and domain name in the email address.

### Character Set `[a-zA-Z0-9-]+`
- **Purpose**: Defines the set of valid characters for the domain name of the email.
- **Effect**: One or more characters from this set must appear after the "@" symbol.

### Non-Capturing Group `(?:\.[a-zA-Z0-9-]+)*`
- **Purpose**: Defines a non-capturing group that matches the domain extension.
- **Effect**: Zero or more domain extensions can appear, each starting with a dot (.) followed by one or more valid characters for the domain extension.

### End Anchor `$`
- **Purpose**: Specifies the end of the line.
- **Effect**: The matching will end at the end of the string, ensuring that the entire string conforms to the email pattern.

---

This concludes the documentation for the provided email validation regex expression. If you have any further questions or need additional clarifications, feel free to ask.

## Conclusion

This is a simple example of how you can use the a LLM like ChatGPT to create very comprehensive documentation