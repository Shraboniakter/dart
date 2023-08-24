abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount); // Abstract method
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * (interestRate / 100);
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
    } else {
      print('Insufficient funds for withdrawal.');
    }
  }
}

void main() {
  SavingsAccount savings = SavingsAccount(12345, 1000.0, 2.5);
  savings.deposit(500.0);
  savings.withdraw(200.0);

  CurrentAccount current = CurrentAccount(54321, 1500.0, 1000.0);
  current.deposit(300.0);
  current.withdraw(2000.0);
}
