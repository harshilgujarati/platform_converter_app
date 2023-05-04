import 'package:flutter/material.dart';

class techskill extends StatefulWidget {
  const techskill({Key? key}) : super(key: key);

  @override
  State<techskill> createState() => _techskillState();
}

class _techskillState extends State<techskill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("technical skill"),
      ),
    );
  }
}
