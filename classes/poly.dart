
class PaymentMethod{
    double amount;
    PaymentMethod(this.amount);

    void processPayment() {
        print("Paid via unclassified method");
    } 

      
    
}

class MobileMoney extends PaymentMethod{
    String number;
    MobileMoney(double amount,this.number) : super(amount);

    @override 
    void processPayment() {
        print("Sending ksh $amount to $number");
    } 

}
class CreditCard extends PaymentMethod{
    String creditNumber;
    CreditCard(double amount,this.creditNumber) : super(amount);

    @override 
    void processPayment() 
{
print("Sending ksh $amount from account with credit number:$creditNumber");
}
    
}
class BankTransfer extends PaymentMethod{
    String bankName;
    BankTransfer(double amount,this.bankName) :super(amount);
    @override 
    void processPayment()
    {
     print("Transfering ksh $amount from $bankName bank");

    } 
    }
     void checkout(PaymentMethod method)
     {
        method.processPayment();

     }   
       void main()
    {
        PaymentMethod ONE = MobileMoney(1500.75,"0711637046");
        checkout(ONE);
        PaymentMethod TWO = CreditCard(1500.75,"1234567892123456789");
        checkout(TWO);
        PaymentMethod THREE = BankTransfer(1500.75,"KCB");
    }