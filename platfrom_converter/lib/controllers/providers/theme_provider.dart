import 'package:flutter/material.dart';
import 'package:platfrom_converter/models/thememodel.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeModel themeModel = ThemeModel(isDark: false);

  changeTheme() {
    themeModel.isDark = !themeModel.isDark;
    notifyListeners();
  }
}