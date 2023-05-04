// Write a program to find the average of all elements in an array
//list digit no avarage kadva mate code...


void main() {
  // Sample array
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];


  double average = calculateAverage(numbers);

  print("The average is: $average");
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    throw {print("Array is empty")
    };
  }

  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }

  double average = sum / numbers.length;

  return average;


}
