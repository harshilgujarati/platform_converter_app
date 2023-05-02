import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertino_call_page extends StatefulWidget {
  const cupertino_call_page({Key? key}) : super(key: key);

  @override
  State<cupertino_call_page> createState() => _cupertino_call_pageState();
}

class _cupertino_call_pageState extends State<cupertino_call_page> {
  @override
  Widget build(BuildContext context) {
    int a = 1;
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
