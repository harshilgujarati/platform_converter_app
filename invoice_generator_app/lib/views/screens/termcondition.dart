import 'package:flutter/material.dart';
import '../../utils/globals.dart';

class termcondition extends StatefulWidget {
  const termcondition({Key? key}) : super(key: key);

  @override
  State<termcondition> createState() => _termconditionState();
}

class _termconditionState extends State<termcondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainappbar,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Scrollbar(
          thickness: 6,
          radius: Radius.circular(40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage('assets/images/term&condi.jpg'),
                  width: 500,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'March 2023',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'These terms of use ("Terms") govern the access, browsing and use by the users ("User" or "Users", as applicable) of https://www.flaticon.com/, including any of its subdomains and/or sections ("Website"); as well as the services rendered through the Website ("Service" or "Services", as applicable) which include the download and use of certain content.Accessing and using the Website implies that the User has read and accepts to be bound by these Terms without exception. In case the User does not accept the Terms or have any objection to any part of the present Terms, the User must not use the Website.The Company may modify the Terms at any time and thus we recommend that the Terms are reviewed on a regular basis by the User. The date at the beginning of these Terms refers to the latest update of these Terms, which will be applicable from the date of publication.These terms of use ("Terms") govern the access, browsing and use by the users ("User" or "Users", as applicable) of https://www.flaticon.com/, including any of its subdomains and/or sections ("Website"); as well as the services rendered through the Website ("Service" or "Services", as applicable) which include the download and use of certain content.Accessing and using the Website implies that the User has read and accepts to be bound by these Terms without exception. In case the User does not accept the Terms or have any objection to any part of the present Terms, the User must not use the Website.The Company may modify the Terms at any time and thus we recommend that the Terms are reviewed on a regular basis by the User. The date at the beginning of these Terms refers to the latest update of these Terms, which will be applicable from the date of publication.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade900,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('spalshscreen');
                  },
                  child: Text(
                    "*I am read all term and condition\n  and agree to the terms and conditions.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
