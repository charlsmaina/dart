class Student{
    late String name ;
    late int _age;
    late String College;
    late String department;
    

    Student(this.name,int age_value,this.College,this.department)
    {
    this.age = age_value;

    }

    Student.noCollege(this.name,int age_value)
    {
        this.age = age_value;
        College = "Not enrolled";
        department = "None";
    }

    // another named constructor
    Student.fromMap(Map<String,dynamic>data)
    {
        name = data["name"];
        this.age = data["age"];
        College = data["college"];
        department = data["department"];
    }
   
    
    set age(int age_value)
    {
        if (age_value > 0)
        {
            _age = age_value;
        }
        else
        print("Invalid age:");
    }
    int get age => _age;

    void venue() => print("$name  takes classes in the $department building");
}
void main()
{
    Student s = Student("Charles Maina",10,"JKUAT","ECE");
    print("Name:${s.name}");
    
    print("Uni: ${s.College}");
    print("Age:${s.age}");
    s.age = -5;
    print("Age:${s.age}");

    Student s2 = Student.noCollege("Joseph Matimu",15);
    print("Name:${s2.name}");
    print("Age:${s2.age}");
    print("College:${s2.College}");
    print("Department:${s2.department}");

    Student s3 =Student.fromMap(
{
    "name":"Evans Kimathi",
    "age":22,
    "college":"TUM",
    "department":"Civil engineering"
}
    );

    print("Name:${s3.name}");
    print("Age:${s3.age}");
    print("College:${s3.College}");
    print("Department:${s3.department}");
    s3.venue();
    s.venue();
    s._age = 25;// dart private attibutes and properties are enforced at file scope not class scope.
    print("New ${s.name} age is ${s._age}");

    
    

}