//Write a program to find the frequency of an element in an array
//array ma repate thata number ketli var reapate thay che ae fins karva no code...


void main() {
  List<int> arr = [1,3,2,5,8,3,6,4,3,3,3,6]; 
  int Num = 3; 
  int Reapate = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == Num) {
      Reapate++;
    }
  }

  print("Array: $arr");
  print("Number: $Num");
  print("Reapate Number : $Reapate");
}
