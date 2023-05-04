import 'package:contact_diary/models/thememodel.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeModel themeModel = ThemeModel(isDark: false);

  changeTheme() {
    themeModel.isDark = !themeModel.isDark;
    notifyListeners();
  }
}