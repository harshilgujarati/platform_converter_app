import 'package:flutter/cupertino.dart';
import 'package:platfrom_converter/models/app_model.dart';

class App_provider extends ChangeNotifier{
  AppModel appModel;

  App_provider({required this.appModel});

  void changeApp(){
    appModel.isiphone = !appModel.isiphone;
    notifyListeners();
  }
}