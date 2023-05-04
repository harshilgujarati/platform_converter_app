// Write a program to count the number of digits in a given number using a loop
//user jetla number nakhe tena ketla digit che ae gotva mate code...


import 'dart:io';

void main() {

  stdout.write("Enter a number: ");

  int i = int.parse(stdin.readLineSync()!);
  int digitCount = totalDIgit(i);

  print("Total Digit's => $digitCount");
}

int totalDIgit(int i) {
  String numString = i.toString();
  int digitCount = numString.length;
  return digitCount;
}
