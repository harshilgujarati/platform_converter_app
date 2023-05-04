import 'package:flutter/material.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('declaration'),
      ),
    );
  }
}
