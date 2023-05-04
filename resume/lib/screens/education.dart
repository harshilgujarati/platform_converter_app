import 'package:flutter/material.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
    );
  }
}
