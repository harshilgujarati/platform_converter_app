import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';
import 'package:flutter/cupertino.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        title: "Login Account",
        iconName: CupertinoIcons.profile_circled,
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed('singup');
          });
        },
        textcolor: Colors.white,
        fontssize: size.width * 0.073,
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
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Simpleimage(
                          imagePath: "assets/gif/filldetails.gif",
                          height: size.height * 0.38,
                          width: size.width * 0.9,
                        ),
                        SizedBox(height: size.height * 0.04),
                        Simpletextfield(hint: "Enter vaild Email", label: "Email", val: email!, nameofstoreplace: email!,preIcon: Icon(Icons.email_outlined)),
                        SizedBox(height: size.height * 0.01),
                        GetPasswordFromUser('Password'),
                        SizedBox(height: size.height * 0.135),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              size.width * 0.05,
                              size.height * 0.04,
                            ),
                            backgroundColor: mainpurpilebgcolor,
                          ),
                          onPressed: () {
                            setState(() {
                              formKey.currentState!.save();
                              if (formKey.currentState!.validate() && password != null ) {
                                Navigator.of(context).pushNamed('logininfo');
                               }
                              // else if( password == null){
                              //   Navigator.of(context).pushNamed('singup');
                              // }
                            });
                          },
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
                          height: size.height * 0.07,
                        ),
                        SizedBox(
                          height: size.height * 0.09,
                        ),
                      ],
                    ),
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
