import 'package:flutter/cupertino.dart';
import '../../models/app_model.dart';

class App_provider extends ChangeNotifier{
  AppModel appModel = AppModel(isiphone: false);

  void changeApp() async {
    appModel.isiphone = !appModel.isiphone;
    notifyListeners();
  }
}