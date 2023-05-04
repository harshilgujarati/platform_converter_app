import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertino_chat_page extends StatefulWidget {
  const cupertino_chat_page({Key? key}) : super(key: key);

  @override
  State<cupertino_chat_page> createState() => _cupertino_chat_pageState();
}

class _cupertino_chat_pageState extends State<cupertino_chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
      ),
    );
  }
}
