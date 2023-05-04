import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';

class logininfo extends StatefulWidget {
  const logininfo({Key? key}) : super(key: key);

  @override
  State<logininfo> createState() => _logininfoState();
}

class _logininfoState extends State<logininfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        title: "Resume Bulider",
        iconName: Icons.add,
        onPressed: () {},
        textcolor: Colors.white,
        fontssize: size.width * 0.070,
        Iconcolor: Colors.white,
        fontweights: FontWeight.bold,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: mainpurpilebgcolor,
            ),
            SizedBox(
              height: size.height * 0.03,
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              color: mainpurpulecolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'YOUR RESUMES',
                      style: TextStyle(
                        fontSize: size.width * 0.09,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('assets/gif/No data.gif'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.01,),
            Container(
              alignment: Alignment.center,
              child: Text(
                '🙁  You dont have any resumes...',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.15,
              child: Container(
                color: Colors.white,
              ),
            ),
            FloatingActionButton.large(
              onPressed: () {
                Navigator.of(context).pushNamed('fieldsslides');
              },
              backgroundColor: mainpurpulecolor,
              splashColor: mainpurpilebgcolor,
              child: Icon(Icons.add,size: size.width * 0.15,color: mainpurpilebgcolor,),
            ),
          ],
        ),
      ),
    );
  }
}
