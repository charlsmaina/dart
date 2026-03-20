/*
# In this exercise am going to demostrate how interfaces work. Interfaces are a way to enforce multiple contracts where a class can do different things present in other classes. this arises from the limitation that any class in dart can extend ONLY one class at a time. 
## The keyword implements is used to allow a class to extend multiple classes. When this method of extension is used, you implement everything that the parent implemented in that extending class. YOU GET NOTHING FOR FREE
### In this exercise here is what is implemented:

-----------------------------------------------------problem statement----------------------------------------------------------------------
 # Consider a case where you have different workers / employees in a company. you may want to profile them based on certain features. For example you may have interns, employed workers and managers. IN this set of employees: some are trainable, payable, manageable and can have stock options. So i can have three different classes for these distinct features and then let each individual class of employee extend a specific classes that match the features that they posses. Thats it:. In this case i will have a top employee class that all other descends from.

 ## -----------------------------------------------pseudocode------------------------------------------------------------------------------
 
 # create a parent class - employee that sets the name of the employee
 ## Create three other classes that that are extendable  : 1)Trainable 2)Manageable 3)Payable 4)stockOptions
 ### then implement different employee types who implement the different features
 ### since each employee has a name, a parent class to the different types of employees is feasible and hence implemented

 */

 class Employee{
    String name;
    Employee(this.name);
 }
 abstract class Trainable{
    void attendTraining(String course);
 }
 abstract class Payable{
    void receiveSalaly(double amount);
   
 }

 abstract class Manageable{
    void assignTask(String Task);
    void reportProgress(String state);
 }

 class Engineer extends Employee implements Trainable,Payable,Manageable{
    String techStack;
    Engineer(String name,this.techStack): super(name);
    @override
    void attendTraining(String course)
    {
        print("$name has a scheduled course on $course to improve on $techStack skills ");
    }
    @override
    void receiveSalaly(double amount) => print("$name earns Ksh. $amount monthly");

    @override
    void assignTask(String task) => print("$name is currently assigned to work on $task");
    @override
    void reportProgress(String state) => print("$name assigned tasks are currently $state");
    
 }

 class Intern extends Employee implements Trainable,Payable{
    String college;
    Intern(String name,this.college):super(name);
    @override 
    void attendTraining(String course) => print("$name from $college should receive training in $course during the internship period");
    @override
    void receiveSalaly(double amount) => print("$name receives a stipend of  Ksh. $amount monthly");

 }

 class Manager extends Employee implements Manageable,Payable{
    String department;
    Manager(String name,this.department):super(name);
    @override
    void assignTask(String task) => print("$name is responsible for $task in the $department department");
    @override 
    void reportProgress(String state) => print("$name assigned tasks are $state");
    @override
    void receiveSalaly(double amount) => print("$name earns Ksh. $amount monthly");


 }

 void processPayroll(Payable employee,double amount) => employee.receiveSalaly(amount);


 void main()
 {
    Engineer firmwareEngineer = Engineer("Charles","Real Time Operating Systems");
    firmwareEngineer.receiveSalaly(987000.00);
    firmwareEngineer.attendTraining("Operating systems primtives");
    firmwareEngineer.assignTask("device drivers implementation");
    firmwareEngineer.reportProgress("in progress");

    Intern engineeringIntern =Intern("Wambua","JKUAT");
    engineeringIntern.attendTraining("BMS implementation");
    engineeringIntern.receiveSalaly(150000);
    
    Manager engineeringManager =Manager("Edwin","PCB Design and Fabrication");
    engineeringManager.receiveSalaly(1200000);
    engineeringManager.assignTask("SoC design process");
    engineeringManager.reportProgress("in progress");

    processPayroll(firmwareEngineer,987000.00);
    processPayroll(engineeringIntern,150000);
    processPayroll(engineeringManager,1200000);
 }