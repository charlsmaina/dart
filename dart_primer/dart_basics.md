### Null aware operators

- ?? - fallback when result is null
- ?. - Call method only if not null
- ??= - Assign only if currently null
- ! - Asset its not null
- ? - After a type - signifies the type can be null or the specifid type

- all executable dart code must run inside the main() function

### Data types in Dart

- Numeric types
  - int - 64 bit
  - double - floating point number
  - num - parent class for int and double { use it when you want function or variable to work with any numeric type}
- Boolean
  - bool -true or false

- Collection types
- lists - ordered + duplicate allowed
- sets - unordered + unique values only
- maps - key value pairs

- Special types
- dynamic - can take values of any type at runtime
- var lets the compiler infer the type of the value and lock it
- Object - Everything in dart is an object : Object is the parent object from which all objects are derived from. It has some base methods

### More basics in documentation

null safety - a mechanism to prevent and raise errors when expressions that eveluate to null are accessed in dart

- (?) - informs dart that null is acceptable
- (?.) -Null aware operator - states null
- (??) - provides a fall back incase null is encountered
- you cant call a method or properties to nullable types :except for hashcode and toString
- Uninitialized nullable variables has an initial value of null

- Late variable - Used when declaring a non-nullable variable that is initialized after its declaration and when lazily initializing a variable
- lazy initialization - initialization is done when the variable is required and not upfront.
- final and const variables - used when you never intend to change a variable
- A final variable - can be set only once - you cannot change its value once set
- a const varible is a compile time constant
-
