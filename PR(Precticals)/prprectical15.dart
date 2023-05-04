//Write a program to convert a decimal number to binary using a loop
//decimal number mathi binary ma convert karvano code...


void main() {
  int decimal = 10; 
  String binary = ''; 

  while (decimal > 0) {
    binary = (decimal % 2).toString() + binary;
    decimal = decimal ~/ 2; 
  }

  print("Converted in Binary : $binary"); 
}
