

typedef Operation = int Function(int a, int b);

void main()
{
    /*
    Records - a way to store together related data of differenrt types 
    - Analogous to structs in c
    - they two ways to store: store separating with commas - access using index ..ie $index
    - named storage - use name:value - access by name
    - record is a dat structure
    - records are immutable after creation
    - they are variables 
    - record destructuring - unpacking the values in a record
    - they values are either positional values or named fields
    - you can specify the type of the variables and the format of the contents of the record
    - all named fields go in one {} block
    - dart has no float
    - name of named fields in a record type are part of records type definition
    -in named positional fields - the names are not part of records type deination
    - two records are equal id the type of their positions values are the same - e the structure
    - record types - are structurally typed based on :set of its fields, fields types and their names
    
     */

     (String,int,{String REG,String course,double sem}) student = ("Charles Maina",23,REG:"ENE212-0087/2021",course:"ECE",sem:5.2);

     var (name,age, :REG, :course, :sem) = student;// deconstructs the record and assigns it to appropriate variables
     print(name);
     print(student.REG);
     print(sem);
     print(student);
     print(student.$1); // how to access positional record fields
     print(student.course);// how to aaccess named fields in a record

     (int a, int b, int c) abc = (1,2,3);
     (int d, int e, int f) def = (1,2,3);
     print((abc == def));//prints true if abc positional values are same as def positinal values

     // records can also be used in functions to return multiple variables

     //typedef

     
     
     int add(int x,int y) => x + y;
     int multiply(int x, int y) => x * y;
     int subtract(int x, int y) => x - y;

     Operation op1 = add;
     Operation op2 = multiply;
     Operation op3 = subtract;

     print(op1(3,2));
     print(op2(2,3));
     print(op3(3,2));

   
     

}