/*
Mixins are a mechanism to create reusable code that can be reused in different sections that share the same logic as the mixin logic
------------------------------problem statement ------------------------------------
# In the interfaces program. I used interfaces to allow classes to inherit or extend multiple classes simultaneousl. in this case every class case have to be rewritten. YOU GET NOTHING FOR FREE. So this is kind of verbose since some code logic like payable is the same. Mixins help eliminate this by reusing this block of code.
-----------------------------pseudocode--------------------------------------------
# create a payable mixin which can be used with all levels of employeees..ie (engineers,inters, and managers)
##  create also a Manageable mixin and restrict it to engineers and managers

 */

 mixin Payable on Employee{
      void receiveSalaly(double amount)
      {
        print("$name earns Ksh. $amount monthly");
        print("Tax remittance:${amount * 0.3}");
        print("Gross salaly: $amount\nNet salary:${amount - amount * 0.3}");
      } 
 }

 mixin Manageable on Employee, Engineer,Manager {
    void assignTask(String task) {
        print("$name is responsible for $task in the $department department");
    }
    void reportProgress(String state) 
    {
          print("$name assigned tasks are $state");
    }
   
    
 }


 class Employee{
    String name;
    Employee(this.name);
 }
 abstract class Trainable{
    void attendTraining(String course);
 }
 
 

 class Engineer extends Employee with Payable, Manageable implements Trainable {
    String techStack;
    String department;
    Engineer(String name,this.techStack,this.department): super(name);
    @override
    void attendTraining(String course)
    {
        print("$name has a scheduled course on $course to improve on $techStack skills ");
    }
   
    
 }

 class Intern extends Employee with Payable implements Trainable {
    String college;
    Intern(String name,this.college):super(name);
    @override 
    void attendTraining(String course) => print("$name from $college should receive training in $course during the internship period");
    

 }

 class Manager extends Employee with Manageable,Payable{
    String department;
    String task;
    Manager(String name,this.task,this.department):super(name);
   


 }

 void processPayroll(Payable employee,double amount) => employee.receiveSalaly(amount);


 void main()
 {
    Engineer firmwareEngineer = Engineer("Charles","Real Time Operating Systems","Systems Engineering");
    firmwareEngineer.receiveSalaly(987000.00);
    firmwareEngineer.attendTraining("Operating systems primtives");
    firmwareEngineer.assignTask("device drivers implementation");
    firmwareEngineer.reportProgress("in progress");

    Intern engineeringIntern =Intern("Wambua","JKUAT");
    engineeringIntern.attendTraining("BMS implementation");
    engineeringIntern.receiveSalaly(150000);
    
    Manager engineeringManager =Manager("Edwin","Verification","PCB Design and Fabrication");
    engineeringManager.receiveSalaly(1200000);
    engineeringManager.assignTask("SoC design process","Design And Fabrication");
    engineeringManager.reportProgress("in progress");

    processPayroll(firmwareEngineer,987000.00);
    processPayroll(engineeringIntern,150000);
    processPayroll(engineeringManager,1200000);
 }