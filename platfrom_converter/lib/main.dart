import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platfrom_converter/controllers/providers/app_model_provider.dart';
import 'package:platfrom_converter/controllers/providers/theme_provider.dart';
import 'package:platfrom_converter/models/app_model.dart';
import 'package:platfrom_converter/screens/android_screen/chat_page.dart';
import 'package:platfrom_converter/screens/android_screen/take_user_details.dart';
import 'package:platfrom_converter/screens/cupertino/cupertino_chat_page.dart';
import 'package:platfrom_converter/screens/cupertino/cupertino_take_user_details.dart' as ios;
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => App_provider(appModel: AppModel(isiphone: true)),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, _) {
        return (Provider.of<App_provider>(context).appModel.isiphone == true)
            ? CupertinoApp(
                debugShowCheckedModeBanner: false,
                initialRoute: '/',
                routes: {
                  '/': (context) =>   ios.cupertino_take_user_details(),
                  'cupertino_chat_page': (context) => cupertino_chat_page(),
                },
              )
            : MaterialApp(
                debugShowCheckedModeBanner: false,
                routes: {
                  '/': (context) => take_user_details(),
                  'chat_page': (context) => chat_page(),
                },
              );
      },
    ),
  );
}
