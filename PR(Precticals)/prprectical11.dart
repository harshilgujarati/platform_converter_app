//Write a program to count the number of even and odd elements in an array.
//array ma ketla odd che and keta even che teno total...


void main() {
  
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  int even = 0;
  int odd = 0;

  numbers.forEach((number) {
    if (number % 2 == 0) {
      even++;
    } else {
    }
      odd++;
  });

  print("Even numbers: $even");
  print("Odd numbers: $odd");
}
