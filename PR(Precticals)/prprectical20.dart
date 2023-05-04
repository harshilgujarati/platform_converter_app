//Write a program to check if two arrays are equal or not
//array same che ke nai te cheak karva mate no code...


void main() {
  List<int> arr1 = [1, 2, 3, 4, 5]; 
  List<int> arr2 = [1, 2, 3, 4, 5, 6]; 

  if (arr1.length != arr2.length) {
    print("The arrays are not equal.");
    return;
  }

  for (int i = 0; i < arr1.length; i++) {
    if (arr1[i] != arr2[i]) {
      print("\n---------------------------\nArrays are not equal.");
      return;
    }
  }

  print("\n---------------------------\nThe arrays are equal.");
}
