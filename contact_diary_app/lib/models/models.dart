import 'dart:io';

class CounterModel {
  int counter;

  CounterModel({
    required this.counter,
  });
}

class ThemeModel{
  bool isDark;

  ThemeModel({required this.isDark});
}

class ImageModal{
  File? image;

  ImageModal({this.image});
}