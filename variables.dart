void main()
{
int y = 10; // int is an object
String name = "Charles Maina";// string is also an object with associated methods
print("y equals $y");
print("Hello $name");
print(name);

print(name.toLowerCase());
print(name.toUpperCase());
print(name[0]);
print(name.isEmpty);
print(name.split(" "));

//bool
bool isActive = true;
bool notActive = false;
bool mini_active = true;

print(isActive.runtimeType);
print(y.runtimeType);
print(isActive.toString());
print(isActive.hashCode);

print(notActive.hashCode);
print(mini_active.hashCode);
//collction types
// lists
print("Collection types");

List<String>stadiums = ["Sanciro","Old trafford","St James Park", "Bernabue","Camp Noe","Allianz Arena","Old Trafford"];
print(stadiums[0]);
print(stadiums[2]); // in lists the order you specify is guaranteed
stadiums.add("Anfield");
stadiums.remove(stadiums[0]);

print(stadiums);

// sets -  no duplicates
Set<String>midfilders = {"Bruno","Odegard","Macllister"};
midfilders.add("Vitinha");
midfilders.add("Valverde");
midfilders.add("Adam Wharton");
midfilders.add("Bruno");
print(midfilders);
print(midfilders.toList()[0]);

// maps - key-value pairs
Map<String, int>countries_independence = {"Kenya":1963,"USA":1776,"Uganda":1961};
print(countries_independence);
print(countries_independence.keys);
print(countries_independence["USA"]);

// special types
//dynamic - can take any value - no type checking
dynamic last_name = "Kinyua";
last_name = 87;// last name can take a new numeric value
print("Hello $last_name");

// var - lets compiler infer the type and lock it
var course = "Firmware Engineer";
print(course);

Object age = 25;
print(age.runtimeType);

// null
//the type of value null - rarely used directly
//void - return value should be ignored
//arrow syntax - fat arrow - single expression body/ auto return
//dart has no char type : char = single string

//Runes - for unicode code points
Runes runes = Runes("Hello");
print(runes.first);

//codeUnitAt()- UTF-16 code unit
String Uni = "JKUAT";
print(Uni.codeUnitAt(1));
//codeUnits()- List of UTF-16 values
print(Uni.codeUnits);

// Symbol type #
}

