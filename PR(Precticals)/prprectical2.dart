// Write a program to calculate the sum of all numbers between two inputted numbers using a loop
// user je 2 digit nakhe e banne vachhe aavata total digit no sum karvano code....

import 'dart:io';

void main(){

  int Answer = 0;
  stdout.write("Enter First Number : ");
  int fnumber = int.parse(stdin.readLineSync()!); 

  stdout.write("Enter Last Number  : ");
  int lnumber = int.parse(stdin.readLineSync()!); 

  for(int i = fnumber;i <= lnumber;i++){
    Answer += i;
  }

  print("\n==========================================\n");
  print("Your Answer : $Answer");

}