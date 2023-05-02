import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convter_app/components/ios/cupertino_call_page.dart';
import 'package:plateform_convter_app/components/ios/cupertino_settings_page.dart';
import 'package:plateform_convter_app/components/ios/cupertino_take_user_detail.dart';
import 'package:plateform_convter_app/controllers/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import '../../controllers/providers/app_model_provider.dart';
import 'cupertino_chat_page.dart';

class cupertino_home_page extends StatefulWidget {
  const cupertino_home_page({Key? key}) : super(key: key);

  @override
  State<cupertino_home_page> createState() =>
      _cupertino_home_pageState();
}

class _cupertino_home_pageState
    extends State<cupertino_home_page> {


  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_badge_plus),
            label: 'PERSON',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'CHATS',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'PHONE',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'SETTINGS',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: const Text("Platform Converter"),
                trailing: CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context).themeModel.isDark,
                  onChanged: (value) {
                    setState(() {
                      Provider.of<App_provider>(context, listen: false)
                          .changeApp();
                    });
                  },
                ),
              ),
              child: SafeArea(
                child: IndexedStack(
                  index: index,
                  children: [
                    cupertino_take_user_detail(),
                    cupertino_chat_page(),
                    cupertino_call_page(),
                    cupertino_settins_page(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
