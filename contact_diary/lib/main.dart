import 'package:contact_diary/controller/providers/sign_up_provider.dart';
import 'package:contact_diary/controller/providers/theme_provider.dart';
import 'package:contact_diary/models/sign_upmodel.dart';
import 'package:contact_diary/screens/add_contact.dart';
import 'package:contact_diary/screens/details_page.dart';
import 'package:contact_diary/screens/home_page.dart';
import 'package:contact_diary/screens/loginPage.dart';
import 'package:contact_diary/screens/privet_con.dart';
import 'package:contact_diary/screens/sing_up.dart';
import 'package:contact_diary/utils/attributes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences Pref = await SharedPreferences.getInstance();

  EmailSingUp =  Pref.getStringList('Email') ?? [];
  PasswordSingUp =  Pref.getStringList('Password') ?? [];
  runApp(
    contact_app(),
  );
}

class contact_app extends StatefulWidget {
  const contact_app({Key? key}) : super(key: key);

  @override
  State<contact_app> createState() => _contact_appState();
}

class _contact_appState extends State<contact_app> {
  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context)=> sing_up_provider(m1: sign_upmodel(email:EmailSingUp, password: PasswordSingUp)))
        ],
        builder: (context, _) {
          return MaterialApp(
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode:
            (Provider.of<ThemeProvider>(context).themeModel.isDark == false)
                ? ThemeMode.light
                : ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            initialRoute: 'SignUpPage',
            routes: {
              '/': (context) => home_page(),
              'SignUpPage': (context) => SignUpPage(),
              'LoginPage': (context) => LoginPage(),
              'add_contact': (context) => add_contact(),
              'details_page': (context) => details_page(),
              'private_page': (context) => private_page(),
            },
          );
        },
      );
  }
}
