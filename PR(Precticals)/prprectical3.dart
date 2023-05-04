// write a program to find all leap years between 2020 to 2080 using a loop
//2020 thi 2080 ni vachhe leap year gotva mate code....


void main() {
  int SYear = 2020;
  int EYear = 2080;

  print("Leap years : \n");

  for (int year = SYear; year <= EYear; year++) {
    if (chekenai(year)) {
      print(year);
      print("\n");
    }
  }
}

bool chekenai(int year) {

  if (year % 4 == 0) {

    if (year % 10 == 0) {

      if (year % 40 == 0) {
        return true;
      } 
      else {
        return false;
      }
    } 
    else {
      return true;
    }
  } 
  else {
    return false;
  }
}