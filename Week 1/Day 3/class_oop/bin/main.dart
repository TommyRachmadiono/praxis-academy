import 'package:class_oop/class_oop.dart' as class_oop;
import 'package:class_oop/Dog.dart';
import 'package:class_oop/Balance.dart';
import 'package:class_oop/Withdraw.dart';
import 'package:class_oop/Deposit.dart';
import 'dart:io';

void main(List<String> arguments) {
  String select;
  String choice = '0';
  Deposit deposit = Deposit();
  Balance balance = Balance();
  Withdraw withdraw = Withdraw();
  // print('Hello world: ${class_oop.calculate()}!');
  print("""
=================================================
              Welcome to simple ATM
=================================================""");
 print('');
 
do {
  try {
    do {
       print("""
            Please select ATM Transactions
            Press [1] Deposit
            Press [2] Withdraw
            Press [3] Balance Inquiry
            Press [4] Exit
""");

      stdout.write("What would you like to do ? ");
      select = stdin.readLineSync();
      if(int.parse(select) > 4) {
        print('Please select correct transactoin');
      } else {
        switch (select) {
          case '1':
            print('Enter the amount of money you deposit');
            deposit.deposit = double.parse(stdin.readLineSync());
            balance.balance = balance.balance + deposit.deposit;
            print("The amount you deposit is ${deposit.getDeposit()}");
            break;
          case '2':
              print('Make sure you have sufficient balance');
              print('Enter amount you want to withdraw');
              double temp = double.parse(stdin.readLineSync());
              withdrawMoney(balance,temp);

            break;
          case '3':
            print(balance.getBalance());
            break;
          case '4':
            print("Transaction exited");
            exit(0);
            break;
          default:
            print("Transaction exited");
            exit(0);
            break;
        }
      }
    } while (int.parse(select) > 4);

    do {
      try {
        print('Would you like to do another transactions ?');
        print("[1] Yes , [2] No");
        choice = stdin.readLineSync();

        if (int.parse(choice) > 2) {
          print("Please select correct choice");
        } 
      } catch (e) {
        print("error input! number only");
        print("[1] Yes , [2] No");
        choice = stdin.readLineSync();
      }
    } while (int.parse(choice) > 2);
  } catch (e) {
    print('error input! number only.');
    stdout.write("[1] Yes , [2] No");
    choice = stdin.readLineSync();
  }
} while(int.parse(choice) <= 1);

print("Thank you for using this ATM");

} // END OF MAIN

withdrawMoney(Balance balance, double withdraw) {
  if (balance.balance == 0) {
    print('Your current balance is 0');
    print('You cannot withdraw');
    print('You need to deposit first');
  } else if (balance.balance <= 500) {
    print('Minimum amount to withdraw is 501');
    print('Your current balance is ${balance.getBalance()}');
  } else if (withdraw > balance.balance) {
    print('Your withdraw is greater than your balance');
    print('Please check the amount you entered');
  } else {
    balance.balance = balance.balance - withdraw;
    print('Your amount of withdraw is ${withdraw}');
  }
}
