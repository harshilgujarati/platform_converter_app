import 'package:flutter/material.dart';

class Apptheme {
  static final ThemeData ligthTheme = ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: Colors.orange,
      secondary: Colors.green,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.dark,
      primary: Colors.black,
      secondary: Colors.green,
    ),
  );
}


