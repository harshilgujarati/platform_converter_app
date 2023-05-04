import 'package:flutter/material.dart';
import '../../models/models.dart';

class CounterProvider extends ChangeNotifier{
  CounterModel counterModel = CounterModel(counter: 0);

  void incremnet(){
    counterModel.counter++;
    notifyListeners();
  }
}

class ThemeProvider extends ChangeNotifier{
  ThemeModel themeModel = ThemeModel(isDark: false);

  changeTheme(){
    themeModel.isDark = !themeModel.isDark;
    notifyListeners();
  }
}