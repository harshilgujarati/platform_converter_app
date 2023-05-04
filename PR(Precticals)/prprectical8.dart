// Write a program to find the largest element in an array
//list ma big number find karvano code...


void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]; 
  int BigNumber = numbers[0]; 

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > BigNumber) {
      BigNumber = numbers[i]; 
    }
  }

  print("Biggest Number : $BigNumber");
}
