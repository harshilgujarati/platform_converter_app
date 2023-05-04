// Write a program to find the factorial of a given number using a loop
//user je num nakhe aeno fectotial gotva mate no code...


import 'dart:io';

void main() {


  int factorial = 1;

  stdout.write("Enter that number who you need a factorial => ");
  int num = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }

  print("Your Answer : $factorial");
}
