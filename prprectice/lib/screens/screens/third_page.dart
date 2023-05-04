import 'package:flutter/material.dart';

class Four_Page extends StatefulWidget {
  const Four_Page({Key? key}) : super(key: key);

  @override
  State<Four_Page> createState() => _Four_PageState();
}

class _Four_PageState extends State<Four_Page> {
  late int i;
  late int j;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Patten",
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.tealAccent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              for(i=1; i<=5; i++)
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    for(j=1; j<=i; j++)
                      Text("$j",style: TextStyle(
                        fontSize: 20,
                      ),),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}