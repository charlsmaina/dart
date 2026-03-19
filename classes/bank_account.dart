class BankAccount{
    String owner;
    double _balance = 0.0;
    BankAccount(this.owner);

    double get balance => _balance;
    void Deposit(double amount)
    {
 if(amount <= 0)
    {
        _log("Deposit rejected: amount must be positive");
        return;
    }
    else
    {
        _balance += amount;
        _log("Deposited Ksh: $amount. New balance : Ksh $_balance");
    }
    }
   

    void withdraw(double amount)
    {
        if(amount <= 0)
        {
            _log("Withdraw rejected: amount must be positive");
            return;
        }
        else if(amount > _balance)
        {
            _log("Withdrawal rejected: Insufficient balance");
            return;

        }
        else
        {
            _balance -= amount;
            _log("Withdrew Ksh $amount:New balance: $_balance ");
        }
    }

    void _log(String msg)
    {
        print("[LOG] $msg");
    }
    

}

void main()
{
   BankAccount b1 = BankAccount("Charles Maina");
   print("Account owner:${b1.owner}");
   print("Balance:${b1.balance}");
   b1.Deposit(3000);
   b1.withdraw(200);
   
}