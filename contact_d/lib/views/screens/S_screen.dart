import 'dart:async';

import 'package:flutter/material.dart';

class logoscreen extends StatefulWidget {
  const logoscreen({Key? key}) : super(key: key);

  @override
  State<logoscreen> createState() => _logoscreenState();
}

class _logoscreenState extends State<logoscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacementNamed("HomePage");
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
              ),
              SizedBox(
                height: 240,
              ),
              FlutterLogo(
                size: 240,
              ),
              SizedBox(
                height: 150,
              ),
              CircularProgressIndicator(),
              SizedBox(
                height: 190,
              ),
              Text(
                'Made with ❤️ in india',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
