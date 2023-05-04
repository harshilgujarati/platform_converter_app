import 'dart:async';
import 'package:flutter/material.dart';
import 'package:invoice_generator_app/views/screens/takeuserdatails.dart';
import '../../utils/globals.dart';

class spalshscreen extends StatefulWidget {
  const spalshscreen({Key? key}) : super(key: key);

  @override
  State<spalshscreen> createState() => _spalshscreenState();
}

class _spalshscreenState extends State<spalshscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => takeusrdetails()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainappbar,
      body: Padding(
        padding: normalpadding.padding,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: applogo.image,
                width: 180,
              ),
              SizedBox(
                height: 340,
              ),
              Text(
                'Please wait for sec....',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              LinearProgressIndicator(
                color: Colors.green,
                backgroundColor: Colors.green.shade100,
                minHeight: 6.0,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
