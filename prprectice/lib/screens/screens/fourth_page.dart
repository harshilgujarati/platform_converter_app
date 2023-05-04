import 'package:flutter/material.dart';

class fouth_page extends StatefulWidget {
  const fouth_page({Key? key}) : super(key: key);

  @override
  State<fouth_page> createState() => _fouth_pageState();
}

class _fouth_pageState extends State<fouth_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fouth Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('grid');
            },
            icon: Icon(Icons.next_plan),
          )
        ],
      ),
    );
  }
}
