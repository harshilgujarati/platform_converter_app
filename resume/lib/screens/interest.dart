import 'package:flutter/material.dart';

class interest extends StatefulWidget {
  const interest({Key? key}) : super(key: key);

  @override
  State<interest> createState() => _interestState();
}

class _interestState extends State<interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('interest'),
      ),
    );
  }
}
