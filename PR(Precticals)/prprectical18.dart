//Write a program to sort an array in ascending order
//array ne incrizing ma convert karva no code...


void main() {
  List<int> arr = [9,8,7,6,5,4,3,2,1];
  print("Real array: $arr");

  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[i]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }

  print("Incriznig : $arr");
}
