import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';
import 'package:resume/screens/achievements.dart';
import 'package:resume/screens/carrierobjeactive.dart';
import 'package:resume/screens/contactinfo.dart';
import 'package:resume/screens/declaration.dart';
import 'package:resume/screens/education.dart';
import 'package:resume/screens/exprience.dart';
import 'package:resume/screens/fieldsslides.dart';
import 'package:resume/screens/interest.dart';
import 'package:resume/screens/login.dart';
import 'package:resume/screens/logininfo.dart';
import 'package:resume/screens/personaldetails.dart';
import 'package:resume/screens/projects.dart';
import 'package:resume/screens/reference.dart';
import 'package:resume/screens/singup.dart';
import 'package:resume/screens/technicalskills.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => intropage(),
        'loginpage' : (context) => loginpage(),
        'singup': (context) => singup(),
        'logininfo': (context) => logininfo(),
        'fieldsslides': (context) => fieldsslides(),
        'contactinfo': (context) => contactinfo(),
        'carrierobjective': (context) => currierobjective(),
        'personaldetails': (context) => personaldetails(),
        'education': (context) => education(),
        'experience': (context) => experience(),
        'declaration': (context) => declaration(),
        'techskill': (context) => techskill(),
        'interest': (context) => interest(),
        'project': (context) => project(),
        'achievement': (context) => achievement(),
        'reference': (context) => reference(),
      },
    ),
  );
}


class intropage extends StatefulWidget {
  @override
  _intropage createState() => _intropage();
}

class _intropage extends State<intropage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      setState(() {
        Navigator.of(context).pushNamed('loginpage');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 15,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: mainpurpulecolor),
                  image: DecorationImage(
                    image: AssetImage('assets/gif/fileinputing.gif')
                  )
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                'RESUME CREATOR',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: mainpurpulecolor,
    );
  }
}




