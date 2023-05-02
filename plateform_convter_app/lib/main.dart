import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convter_app/components/android/call_page.dart';
import 'package:plateform_convter_app/components/android/chat_page.dart';
import 'package:plateform_convter_app/components/android/take_user_details.dart';
import 'package:plateform_convter_app/components/ios/cupertino_take_user_detail.dart' as ios;
import 'package:plateform_convter_app/controllers/providers/app_model_provider.dart';
import 'package:plateform_convter_app/controllers/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'components/ios/cupertino_call_page.dart' as ios;
import 'components/ios/cupertino_chat_page.dart' as ios;
import 'components/ios/cupertino_home_page.dart' as ios;
import 'components/ios/cupertino_settings_page.dart' as ios;
import 'components/android/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => App_provider()),
      ],
      builder: (context, _) {
        return (Provider.of<App_provider>(context).appModel.isiphone == true)
            ? CupertinoApp(
                debugShowCheckedModeBanner: false,
                initialRoute: '/',
                routes: {
                  '/': (context) => ios.cupertino_home_page(),
                  'cupertino_chat_page': (context) => ios.cupertino_chat_page(),
                  'cupertino_call_page': (context) => ios.cupertino_call_page(),
                  'cupertino_settins_page': (context) => ios.cupertino_settins_page(),
                  'cupertino_settins_page': (context) => ios.cupertino_take_user_detail(),
                },
              )
            : MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light(
                  useMaterial3: true
                ),
                darkTheme: ThemeData.dark(
                  useMaterial3: true
                ),
                themeMode:
                    (Provider.of<ThemeProvider>(context).themeModel.isDark ==
                            false)
                        ? ThemeMode.light
                        : ThemeMode.dark,
                initialRoute: '/',
                routes: {
                  '/': (context) => take_user_details(),
                  'chat_page': (context) => chat_page(),
                  'call_page': (context) => call_page(),
                  'settings_page': (context) => settings_page(),
                },
              );
      },
    ),
  );
}
