import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';
import 'package:flutter/cupertino.dart';

class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: NormalAppBar(
        title: "SING UP",
        iconName: CupertinoIcons.profile_circled,
        onPressed: () {
          setState(() {

          });
        },
        textcolor: Colors.white,
        fontssize: size.width * 0.08,
        Iconcolor: Colors.white,
        fontweights: FontWeight.bold,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Scaffold(
              body: Container(
                color: appbgcolorgrey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Simpleimage(
                        imagePath: "assets/images/filldetails.gif",
                        height: size.height * 0.38,
                        width: size.width * 0.9,
                      ),
                      SizedBox(height: size.height * 0.04),
                      SizedBox(height: size.height * 0.01),
                      GetPasswordFromUser('Password'),
                      SizedBox(height: size.height * 0.02),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                            size.width * 0.05,
                            size.height * 0.04,
                          ),
                          backgroundColor: mainpurpilebgcolor,
                        ),
                        onPressed: () {},
                        child: Text(
                          '  Login  ',
                          style: TextStyle(
                            color: mainpurpulecolor,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.09,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sing Up?",
                          style: TextStyle(
                            color: mainpurpulecolor,
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.09,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: appbgcolorgrey,
    );
  }
}
