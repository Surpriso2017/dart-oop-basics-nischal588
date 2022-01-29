import 'dart:io';

class Account {
  late int accountNO;
  int accountBalance = 10000000;
  String accountType = "";

  withdraw(int withdrawAmount) {
    accountBalance = accountBalance - withdrawAmount;
  }

  deposit(int depositAmount) {
    accountBalance = accountBalance + depositAmount;
  }

  getAccountDetails(int accoutNo, String accountTpe, int accountBalance) {
    print(" The Account Number is $accoutNo");
    print(" The name of the student is $accountType");
    print(" The Account Balance is $accountBalance");
  }
}

void main() {
  var loop;
  var account = Account();
  do {
    print(
        "Select among the choices provided: 1) Get Account Details, 2) Withdraw Amount, 3) Deposit Amount");
    String? choice = stdin.readLineSync();
    if (choice!.isNotEmpty) {
      if (choice == "1") {
        account.getAccountDetails(100, "Saving", account.accountBalance);
      } else if (choice == "2") {
        print("Enter the amount to withdraw");
        String? wAmount = stdin.readLineSync();
        account.withdraw(int.parse(wAmount!));
      } else if (choice == "3") {
        print("Enter the amount to deposit");
        String? dAmount = stdin.readLineSync();
        account.deposit(int.parse(dAmount!));
      } else {
        print("Wrong Input");
      }
      print("continue(y/n)");
      loop = stdin.readLineSync();
    } else {
      print("Wrong input");
      print("continue(y/n)");
      loop = stdin.readLineSync();
    }
  } while (loop == "y");
}
