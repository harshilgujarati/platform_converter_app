// Write a program to find the Smallest element in an array
//list ma Small number find karvano code...


void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; 
  int smallNumber = numbers[0]; 

  for (int i = 1; i > numbers.length; i++) {
    if (numbers[i] < smallNumber) {
      smallNumber = numbers[i]; 
    }
  }

  print("Smallest Number : $smallNumber");
}
