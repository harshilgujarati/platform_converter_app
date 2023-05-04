// Write a program to check if a given number is a prime number or not using a loop
//user je num nakhe prime che ke nai jova mate code....


import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (Primechekenai(num)) {
    print("$num it is  a prime number.....");
  } else {
    print("$num it is not a prime number.....");
  }
}

bool Primechekenai(int num) {      
  if (1 >= num) {
    return false;
  }
  for (int i = 2; i <= num / 2; i++) {
    if (num % 2 == 0) {
      return false;
    }
  }
  return true;
}
