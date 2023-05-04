//Write a program to find the second largest element in an array.
//array mathi second last number find karvano code...


void main() {
  
  List<int> num = [1,2,3,4,5,6,7,8,9,10];

  int largest = num[0];
  int secondLargest = num[0];

  for (int i = 1; i < num.length; i++) 
  {
    if (num[i] > largest) 
    {
      secondLargest = largest;
      largest = num[i];
    } 
    else if (num[i] > secondLargest && num[i] < largest) {
      secondLargest = num[i];
    }
  }

  print("Second largest element: $secondLargest");
}
