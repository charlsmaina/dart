void main()
{
    String? name ;
    print(name?? "No name");

    late String age;
    int years = 13;
    if (years > 18)
    {
        age = "Aldult";
        print(age.toUpperCase());
    }
    else
    {
        age = "Below aldult age";
        print(age.toUpperCase());
    }
}