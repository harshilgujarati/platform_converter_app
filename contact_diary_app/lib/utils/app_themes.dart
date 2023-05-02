import 'package:flutter/material.dart';

class App_theme {
  static ThemeData Light_Theme = ThemeData(
    textTheme: TextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue, //main color
      primary: Colors.green, //ElevetedButton text color
      background: Colors.grey.shade100,
    ),
  );
  static ThemeData Dark_Theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      primary: Colors.white,
      background: Colors.white70,
    ),
  );
}
