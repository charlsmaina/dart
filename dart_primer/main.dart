

void main(){
    
    print("Hello, Dart");

    int? x ; // int is non-nullable
   if(x == null)
   print("Null");

   var one = int.parse("1245");// parse method converts strings to numbers
   print(one);
   
   var tostring = one.toString();// toString method converts to strings
   print(tostring);

   var million = 1_0_00_000; // _ can be used as digit separators for readability
   print(million);

// strings - a sting is an object that holds a sequence of UTF-16 code units.
String name  = """Charles
Maina"""; // creating a multiline string
print("${name.toUpperCase()} is a firmware engineer");

print(name.runtimeType);

// Runes and graphemes clusters
/* 
Rune  - a character's unicode number
grapheme cluster - what the human eye sees as one character
code units - how the rune is stored (no of bytes e.t.c)
 */

 var laugh = "Hi \u2665";
 print (laugh);
}