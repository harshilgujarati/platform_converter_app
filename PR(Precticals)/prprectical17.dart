//Write a program to sort an array in descending order
//array ne utarata karm ma karva mate code...


void main() {
  List<int> arr = [1,2,3,4,5,6,7,8,9]; // Input array
  print("Real array: $arr");

  for (int i = 0; i < arr.length - 1; i++) {

    for (int j = i + 1; j < arr.length; j++) {

      if (arr[j] > arr[i]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }

  print("Dicrizing : $arr");
}
