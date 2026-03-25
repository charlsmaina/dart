/*
Challenge:
Write a Dart function called getUserAge that:

Simulates fetching a user's age from a server by waiting 2 seconds
Returns the age as an int
In main, call the function, wait for the result, then print:

------------------------------------------pseudocode----------------------------------------------------------------
 #      define a funtion of type future that retuns an int 
 ##     label the function as async
 ##     call the function with await
 */

 Future<int> getUserAge(int age) async{
    await Future.delayed(Duration(seconds : 5));
    return age;
 }
 void main()
 {
    for (int i = 0;i < 5; i += 5)
    {
        
        print("Fetching age...")
        printf("Age: ${getUserAge(i)}")
    }

 }