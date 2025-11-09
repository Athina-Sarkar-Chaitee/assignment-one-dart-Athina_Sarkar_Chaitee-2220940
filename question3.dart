// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
// TODO: Complete the following requirements:

// Create a BankAccount class with the following specifications:
class BankAccount { // Savings/Checking
  
  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0

  // TODO: Implement the constructor.
  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;
  
  // 3. Methods:
  //  - deposit(double amount): Add money to account
  // TODO: Implement the deposit method
  void deposit(double amount) {
    // TODO: Add the amount to balance
    balance += amount; 
    
  }
  
  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  // TODO: Implement the withdraw method
  void withdraw(double amount) {
    // TODO: Check for sufficient funds and subtract amount
    // TODO: Print error message if insufficient funds
    
    if (amount <= balance) {
      balance -= amount; 
      print('Withdrew $amount from $accountHolder\'s account.');
  } else {
      print('Insufficient funds');
  }
    
  }
  
  //    - getBalance(): Return current balance
  // TODO: Implement the getBalance method
  double getBalance() {
    // TODO: Return the current balance
    return balance;  // TODO: Replace with actual balance
  }
  
  //    - displayAccountInfo(): Show account details
  // TODO: Implement the displayAccountInfo method
  void displayAccountInfo() {
    // TODO: Display account information
    print('Account Info:');
    print('Account Number: $accountNumber');
    print('Account Holder: $accountHolder');
    print('Account Type  : $accountType');
    print('Balance : $balance');

  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario
  
  // TODO: Create 3 bank accounts
  final  account1 = BankAccount('12345', 'Alice', 'Savings');
  final account2 = BankAccount('67890', 'Bob', 'Checking');
  final account3 = BankAccount('11111', 'Charlie', 'Savings');
  
  // TODO: Demonstrate depositing money
  account1.deposit(1000);
  account2.deposit(500);
  account3.deposit(2000);
  
  // TODO: Demonstrate withdrawing money
  account1.withdraw(200);
  account2.withdraw(100);
  
  // TODO: Display account information
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
  
  // TODO: Demonstrate insufficient funds scenario
  account2.withdraw(1000); // This should show insufficient funds message
}
