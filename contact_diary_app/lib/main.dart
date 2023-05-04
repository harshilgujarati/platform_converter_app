import 'package:contact_diary_app/controller/providers/providers.dart';
import 'package:contact_diary_app/screens/add_contact.dart';
import 'package:contact_diary_app/screens/counter_pagee.dart';
import 'package:contact_diary_app/screens/details_page.dart';
import 'package:contact_diary_app/screens/home_page.dart';
import 'package:contact_diary_app/screens/login_page.dart';
import 'package:contact_diary_app/screens/sign_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Contact_App(),
  );
}

class Contact_App extends StatefulWidget {
  const Contact_App({Key? key}) : super(key: key);

  @override
  State<Contact_App> createState() => _Contact_AppState();
}

bool isDarkMode = false;

class _Contact_AppState extends State<Contact_App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      builder: (context,_) {
        return MaterialApp(
          themeMode: (isDarkMode == true) ? ThemeMode.light : ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          initialRoute: '/',
          routes: {
            'add_new_contact': (context) => add_contact(),
            'counter_page': (context) => counterpage(),
            'sign_page': (context) => sign_page(),
            '/': (context) => home_page(),
            'login_page': (context) => login_page(),
            'details_page': (context) => details_page(),
          },
        );
      }
    );
  }
}
