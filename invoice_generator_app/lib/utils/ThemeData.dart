import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: Colors.white,
      secondary: Colors.green.shade300
    )
  );
  static final ThemeData DarkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.black,
      secondary: Colors.green.shade300
    )
  );
}