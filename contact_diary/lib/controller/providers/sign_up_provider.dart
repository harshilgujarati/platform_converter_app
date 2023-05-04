import 'package:contact_diary/models/sign_upmodel.dart';
import 'package:contact_diary/utils/attributes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';


class sing_up_provider extends ChangeNotifier{

  sign_upmodel m1;

  sing_up_provider ({
    required this.m1

});
  void m1security () async {

    EmailSingUp.add(email!);
    PasswordSingUp.add(password!);

    SharedPreferences Pref = await SharedPreferences.getInstance();

    Pref.setStringList('Email', m1.email);
    Pref.setStringList('Password', m1.password);

    notifyListeners();

  }
}

