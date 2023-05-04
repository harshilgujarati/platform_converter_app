import 'package:contact_diary/utils/attributes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sing_up_vector.gif',
              scale: 1.9,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (v) {
                  email1 = v;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter your email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (v) {
                  password1 = v;
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                if (EmailSingUp.isEmpty && PasswordSingUp.isEmpty) {
                  SnackBar snackBar = SnackBar(
                    content: Text("Faild"),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                else {
                  for(int i=0 ; i<= EmailSingUp.length; i++) {
                    if(EmailSingUp[i] == email1 && PasswordSingUp[i] == password1) {
                      Navigator.of(context).pushReplacementNamed('/');
                      break;
                    }
                    else {
                      SnackBar snackBar = SnackBar(
                        content: Text("Faild"),
                        backgroundColor: Colors.red,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      break;
                    }
                  }
                }

              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
