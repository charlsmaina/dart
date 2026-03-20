
//inheritance - reuse or extension of a class by another class

class Animal{
    String name;
    String kingdom;
    int age;
    Animal(this.name,this.kingdom,this.age);

    void breath()
{
    if(kingdom == "Mammalia" || kingdom == "Reptilia" || kingdom == "Aves" || kingdom == "Amphibia") 
     print("A $name breathes via lungs");

    else if(kingdom == "Fish") 
     print("$name breathes via gills");
}
void current_age()
{
print("This ${name} has been alive for the last ${age} years");
}
    
}

class Mammal extends Animal{
    String diet_classification;
    String fur_colour;
    String domesticated;

    Mammal(String name,String kingdom,int age,this.diet_classification,this.fur_colour,this.domesticated) :super(name,kingdom,age);
    void feeding_habit()
    {
        if (diet_classification.toUpperCase() == "HERBIVORE")
        {
            print("A ${name} is a herbivorous animal");
        }
        else if (diet_classification.toUpperCase() == "CARNIVORE")
        {
            print("A ${name} is a carnivorous animal");
        }
        else if (diet_classification.toUpperCase() == "OMNIVORE")
        {
            print("A ${name} is a omnivorous animal");
        }
    }
    void domesticable()
    {
        if(domesticated.toUpperCase() == "DOMESTIC")
        {
            print("A ${name} is a domestic animal");
        }
        else if (domesticated.toUpperCase() == "WILD")
        {
            print("A ${name} is a wild animal");
        }
    }

}

class Dogs extends Mammal{
 String function;
 int size;
 String coat_type;
 Dogs(String name,String kingdom, int age,String diet_classification,String fur_colour,String domesticated,this.function,this.size,this.coat_type):super(name,kingdom,age, diet_classification, fur_colour,domesticated);
 
 void suited_for()
{
    if (function.toUpperCase() == "HEARDING")
    {
        print("${name}s are best suited for controlling cattle or sheep due their high intelligence and trainable nature.");
    }

    if (function.toUpperCase() == "SPORTING")
    {
        print("${name}s are best suited for hunting due to their friendly and active nature.");
    }
    if (function.toUpperCase() == "HOUND")
    {
        print("${name}s are best suited for hunting using sent due to their independent and curious nature");
    }
}


}



void main()
{
    Animal whales = Animal("whale","Mammalia",75);
    whales.breath();
    whales.current_age();
    
    Mammal cow = Mammal("Cow","Mammalia",10,"Herbivore","Black and white","domestic");
    cow.feeding_habit();
    cow.domesticable();

    Mammal lion = Mammal("lion","Mammalia",10,"carnivore","Brown","wild");
    lion.feeding_habit();
    lion.domesticable();
   
    Dogs dog1 = Dogs("German Sherphard","Mammalia",5,"carnivore","black","domestic","hearding",12,"brown");
    dog1.breath();
    dog1.suited_for();
   
}