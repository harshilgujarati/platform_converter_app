// Write a program to calculate the sum of even numbers between 1 and 100 using a loop....
//1 thi 100 ni vachhe aavta beki(2,4,6) number no tatal sum karava mate no code...

//Gaurav sir Task...............
//1.super market billing system in dart..
//2.create a multiple custumor to array of object(jyare user aave tyare teni pase name,is,co.nub. levano
//(full bill system banavani jema user product nakhe(multiple choice)prize no total thay and gst add thay and discount aapvanu....))...


import 'dart:io';

void main(){
  int a = 0;
  for(int i = 2;i <= 100;i += 2)
  {
    a += i;
  }

  int Answer = a;
  print("Your Answer : $Answer");

}