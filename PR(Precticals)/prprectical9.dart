// Write a program to find the sum of all elements in an array
//List total number no sum karva mate code...


void main() {
  List<int> numbers = [1, 2, 3, 4, 5]; 
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {

    sum += numbers[i]; 
  }

  print("Sum of elements: $sum");
}
