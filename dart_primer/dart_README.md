# Dart introduction

- This repository is a collection of code snippets writtten throughout my learning process of Dart .
- Dart is type safe - uses a combination of static type checking and runtime checks to ensure that a variable's value always matches the variables's static type
- var can be used to infer type
- Normal control flow
- imports - Access API's defined in other libraries

## OOP concepts

- class - The blueprint
- object - An instance of a class
- attriutes - data
- methods - functions
- public - acceble anywhere
- private - accessible only to a class
- protected - accessible only inside a class + subclasses

- Building blocks of a clss:
  - Attributes - variables that belong to the object or class ( Instance attribute , class attribute)
  - Method - functions defined inside a class (class , instance method,static method)
  - Constructor - a special method that runs automatically when an object is called
  - Destructor - runs when a an object is destroyed
  - Properties - look like ttributes from the outside but run method logic under the hood
  - inheritance - classes getting access to parent methods and attibutes

- Instance - an object created from a particular class
- Attributes - characteristics of an object - they are variables defined within a class
- Instance variable - a variable that is associated with a particular instance of a class
- class variable - refers to attributes that are simply members of a class
- Encapsulation - The process for providing a public interface for interacting with the object while hiding other information inside the object
- Inheritance concept - (Different classes can have similar components - hence subclasses(children) can share some components from parents through inheritance.)

- => - used for single statements

- imports - for importing APIs

## Variables

- Variables store references
- Example

```
var name = 'Bob:;

```

- the variable called nam contains a reference to a a string object with a value of 'Bob'
- The type of the name variable is inferred to be string , but you can change this type by specifying it
- In Dart everything is an object - every value is an instance of a class with methods and properties
- What this means is , : in C data are just primitives - just bits stored in memory. In Dart, every variable has an object around it. When it is stored in memory, it stores the raw bits + class reference+ methods + heap allocation + garbage collection tracking
- Primitives are as fast and lean as physically possible because they map directly to hat CPU understands natively. Ie The Cpu nows how to perform two 32-bit integers in a single clock cycle - no lookup, no method call, no overhead
- Fundamental tradeoff in programming languages
  - More abstration (objects) - easier to write but slower to run
  - less abstraction (primitives) - harder to write, but run faster
