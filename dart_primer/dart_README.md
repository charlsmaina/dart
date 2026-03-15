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

  - So in dart - there are tree options when specifying the type of object :
    - var - this leaves the compiler to infer the type of the object
    - Object name = 'Bob' - this leaves room for the referenced value to adopt different object types
    - String name - Explicitely sets the object type

    ### Null safety in Dart
    - Null - means the absence of a value - not zero : in simple terms - its like saying - this variable points to no valid memory location

    - Dart enforces null safety
    - Null safety prevents an error that results from unintentional access of variables set to null. Such an error s known as dereference error
    - A null dereference error ocurs when you access a property or call a method on an expression that evaluates to null with the exception being when null supports the property or method. With null safety, the Dart compiler detects these potential errors at compile time.

    - Null safety introduces three key changes:
      - To enable nullability - apply ? after object type
      - Nullable variables default to null if not explicitly : Dart does not set initial values to non-nullable types.
      - You cant access properties or call methods on an expression with a nullable type except for properties or methods that null supports like hashCode otr toString

- Uninitialized nullable type have an initial value of null
- For non-nullable types , it is not a must you initialize them when declaring them, but you need to inialize them before you use them
- **Late variables**
  - Used in scenarios where you know you are going to initialize non-nullable tye later after you have declared it
- **Lazy initialization**
  - Mark the variable as late and then initialize it at its declaration: Used in cases where the variable is not needed or used later or you are initializing an instance variable and the initializer needs access to this.
- Example:

```
late String temparature = readthermometer();// if temparature  variable is never used: then the expensive readthermometer() function is never called

```

**Final or const**

- A final variable can be set only once. You cant change the value of a final variable
- A const variable is a compile-time constant - they are implicitly final
- Instance variables can be final but not const
- const keyword isn't for just creating constant variables - it can be used to create constant values
- you can change the reference of a non -final non-cost variable even if it used to have const values
- Although a final object cannot be modified, its fields can be changed. In comparison , a const object and its field cannot be chaned: they are immutable

**Wildcard variables**

- Refers to variables with the name \_ and are used to declare a variable that is non-binding: essentialy, a placeholder.the initializer if there is executed , but the value is not accessible

## Operators in dart

- in dart you can implement many of the normal operators as class members
- cascade operator (..) - lets you call multiple methods or set multiple propertieson the same object without repeating its name
- The cascade - performs each operation, returns the original object and not the result of the method.
- ?.. - Null- aware cascade - used when the object might be null
- Spread operator (...) - Inserts all elements of one collection into another
- Null aware spread (...?) - if the collection might be null

- For operators that take two operands, leftmost operand determines which method is used. for example, if you have a Vector object and a Point object, then Vector + Point uses Vector addition (+).
- Types of operators:
  - **Arithmetic operators**
    - +,-,-expr(reverse sign of expression),\*,/,~/(divide returning an int result) ,%
