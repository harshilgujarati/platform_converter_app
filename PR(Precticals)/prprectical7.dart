// Write a program to find the largest and smallest numbers in an inputted list using a loop
//List ma biggest and smallest digit find karva mate no code...


import 'dart:io';

void main() {
  stdout.write("Enter size of  list(jetla number nakhva hoy te.....): ");
  int n = int.parse(stdin.readLineSync()!);
  
  List<int> numbers = [];
  
  for (int i = 0; i < n; i++) {

    stdout.write("Enter ${i + 1} Number: ");
    int num = int.parse(stdin.readLineSync()!);

    numbers.add(num);

  }

  int Moto = numbers[0];
  int Nano = numbers[0];
  
  for (int i = 1; i < n; i++) {

    if (numbers[i] > Moto) {

      Moto = numbers[i];
    }

    if (numbers[i] < Nano) {

      Nano = numbers[i];
    }
    
  }

  print("Small number in List: $Nano");
  print("Big number in List: $Moto");
}
