# Introduction to Dart Basics

## Null aware operators

- ?? - fallback when result is null
- Example:
  
  ```text
  String name ?
      name ??= "admin" 

- Here String name? means the variable name can hold a null value or a string.
  
- During the assignment it is checked to confirm that name holds a null value and a falback is provided

- ?. - Call method only if not null
- Example:
  
```text
   String name ?;
   Print(name?.length)
   -Without ?. calling the lenth method can lead to crashes
   ```

- ! - Asset its not null

```text
Example:
String name ?
Print(name!.lenth)
- if name is null , a runtime error occurs


```

- ? - After a type - signifies the type can be null or the specifid type
  
```text
  Example :
  String name 
  - variable name can take null values or string values
```

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
  
 ```text
  List<String>Fruits = ["Apple","Banana","Mango"]
  print(Fruits[0]);
  Output:
  Apple
  ```
  
- sets - unordered + unique values only

```text
Set<int>numbers = {1,2,3,4,3,2};
print(numbers);
Output:
{1,2,3,4}
```

- maps - key value pairs

```text
Map<String, String>Student = {
  "name" : "Dedan"
  "class":"General"
};
print(student[name]);
output:
Dedan
```

- dynamic - can take values of any type at runtime

```text
dynamic value;
value =10;
value = true;
- Dangerous because type safety is lost
```

- var lets the compiler infer the type of the value and lock it
- Object - Everything in dart is an object : Object is the parent object from which all objects are derived from. It has some base methods

### More basics in documentation

null safety - a mechanism to prevent and raise errors when expressions that eveluate to null are accessed in dart

- you cant call a method or properties to nullable types :except for hashcode and toString
- Uninitialized nullable variables has an initial value of null

- Late variable - Used when declaring a non-nullable variable that is initialized after its declaration and when lazily initializing a variable
- lazy initialization - initialization is done when the variable is required and not upfront.
- final and const variables - used when you never intend to change a variable
- A final variable - can be set only once - you cannot change its value once set
- a const varible is a compile time constant

- There is a difference between a string and a string literal: - a string literal is a hardcoded string value written directly in code while a string is a variable or an expression that holds a string value at runtime.
