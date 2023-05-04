import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator_app/utils/globals.dart';
import 'package:invoice_generator_app/views/screens/createinvoice.dart';
import 'package:invoice_generator_app/views/screens/newinvoice.dart';
import 'package:invoice_generator_app/views/screens/spalsh_screen.dart';
import 'package:invoice_generator_app/views/screens/takeuserdatails.dart';
import 'package:invoice_generator_app/views/screens/termcondition.dart';
import 'package:invoice_generator_app/views/screens/user_details.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: InvoiceApp(),
      initialRoute: "1_Spalsh_screen",
      routes: {
        "1_Spalsh_screen": (context) => InvoiceApp(),
        "Term": (context) => termcondition(),
        "Takeuserdetails": (context) => takeusrdetails(),
        "spalshscreen": (context) => spalshscreen(),
        "newinvoice": (context) => newinvoice(),
        "createinvoice": (context) => BillPage(),
        "userdetails": (context) => userdetails(),
      },
    );
  }
}

class InvoiceApp extends StatefulWidget {
  const InvoiceApp({Key? key}) : super(key: key);

  @override
  State<InvoiceApp> createState() => _InvoiceAppState();
}

class _InvoiceAppState extends State<InvoiceApp> {
  Color appbgcolor = Color.fromRGBO(25, 157, 117, 100);

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => termcondition()));
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
              SizedBox(
                height: 160,
              ),
              Text(
                'EASY INVOICE MAKER\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t& \n\t\t TOTAL GENERATOR',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: applogo.image,
                width: 180,
              ),
              SizedBox(
                height: 200,
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
