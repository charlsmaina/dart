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



}

