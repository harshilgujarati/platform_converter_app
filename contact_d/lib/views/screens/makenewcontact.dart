import 'package:flutter/material.dart';
import '../../utils/theme_utils.dart';

class makecontact extends StatefulWidget {
  const makecontact({Key? key}) : super(key: key);

  @override
  State<makecontact> createState() => _makecontactState();
}

bool isDarkMode = false;

class _makecontactState extends State<makecontact> {

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.ligthTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 38,
            ),
          ),
          title: Text(
            "Add Contacts",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.circle,
                size: 36,
                color:
                    (isDarkMode == true) ? Colors.black : Colors.grey.shade500,
              ),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.check, size: 32),
            ),
            SizedBox(
              width: 12,
            )
          ],
          foregroundColor: (isDarkMode == true) ? Colors.white : Colors.black,
          backgroundColor: (isDarkMode == true) ? Colors.orange : Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: (isDarkMode == true) ? Colors.white : Colors.grey.shade900,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: 90,
                        ),
                        radius: 74,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: (isDarkMode == true)
                              ? Colors.black
                              : Colors.white,
                        ),
                        backgroundColor:
                            (isDarkMode == true) ? Colors.orange : Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: TextStyle(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white,
                        fontSize: 19),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: fnameController,
                onSaved: (fname){
                  fnameController = fnameController;
                },
                cursorColor: (isDarkMode == true) ? Colors.black : Colors.white,
                style: TextStyle(
                  color: (isDarkMode == true) ? Colors.black : Colors.white,
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: (isDarkMode == true)
                              ? Colors.black
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            (isDarkMode == true) ? Colors.orange : Colors.green,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    style: TextStyle(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white,
                        fontSize: 19),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: (isDarkMode == true) ? Colors.black : Colors.white,
                style: TextStyle(
                  color: (isDarkMode == true) ? Colors.black : Colors.white,
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  hintStyle: TextStyle(
                      color:
                          (isDarkMode == true) ? Colors.black : Colors.white),
                  focusColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          (isDarkMode == true) ? Colors.orange : Colors.green,
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: TextStyle(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white,
                        fontSize: 19),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: (isDarkMode == true) ? Colors.black : Colors.white,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: (isDarkMode == true) ? Colors.black : Colors.white,
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                    hintText: '+91 99048 62806',
                    hintStyle: TextStyle(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: (isDarkMode == true) ? Colors.black : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            (isDarkMode == true) ? Colors.orange : Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white,
                        fontSize: 19),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: (isDarkMode == true) ? Colors.black : Colors.white,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: (isDarkMode == true) ? Colors.black : Colors.white,
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                  hintText: 'xyz@gmail.com',
                  hintStyle: TextStyle(
                      color:
                          (isDarkMode == true) ? Colors.black : Colors.white),
                  focusColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: (isDarkMode == true) ? Colors.black : Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          (isDarkMode == true) ? Colors.orange : Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
