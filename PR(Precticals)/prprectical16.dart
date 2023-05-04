//Write a program to find the GCD (Greatest Common Divisor) of two inputted numbers using a loop
//user je number nakhe teno biggest Divisor gotva no code...


import 'dart:io';

int GCD(int a, int b) {
  while (b != 0) 
  {
    int c = a % b;
    a = b;
    b = c;
  }
  return a;
}

void main() {

  stdout.write("Enter first number : ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number : ");
  int num2 = int.parse(stdin.readLineSync()!);

  int Answer = GCD(num1, num2);

  print("Your Answer : $Answer");

}
