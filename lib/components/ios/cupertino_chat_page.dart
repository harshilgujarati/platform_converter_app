import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertino_chat_page extends StatefulWidget {
  const cupertino_chat_page({Key? key}) : super(key: key);

  @override
  State<cupertino_chat_page> createState() => _cupertino_chat_pageState();
}

class _cupertino_chat_pageState extends State<cupertino_chat_page> {
  @override
  int a = 1;

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: (a == 1)
          ? Container(
              alignment: Alignment.center,
              child: Text("You have no chat's yet..."),
            )
          : Container(
              alignment: Alignment.center,
              child: Text("You have no chat's yet..."),
            ),
    );
  }
}
