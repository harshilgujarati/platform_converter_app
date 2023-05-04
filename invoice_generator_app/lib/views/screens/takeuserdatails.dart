import 'package:flutter/material.dart';
import 'package:invoice_generator_app/utils/globals.dart';

class takeusrdetails extends StatefulWidget {
  const takeusrdetails({Key? key}) : super(key: key);

  @override
  State<takeusrdetails> createState() => _takeusrdetailsState();
}

class _takeusrdetailsState extends State<takeusrdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainappbar,
      body: SingleChildScrollView(
        child: Padding(
          padding: normalpadding.padding,
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  "assets/images/green-pencil-with-positive-questionnaire.jpg",
                ),
                width: 150,
              ),
              SizedBox(
                height: 49,
              ),
              Text(
                'Fill Your details',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                cursorHeight: 25,
                cursorWidth: 2,
                onChanged: (v) {
                  Name = v;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                      color: Color.fromRGBO(
                        25,
                        157,
                        117,
                        100,
                      ),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  focusColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(34)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(
                        25,
                        157,
                        117,
                        100,
                      ),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(34),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                cursorHeight: 25,
                cursorWidth: 2,
                onChanged: (v) {
                  email = v;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(
                        25,
                        157,
                        117,
                        100,
                      ),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(34)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(
                          25,
                          157,
                          117,
                          100,
                        ),
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(34),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                cursorHeight: 25,
                cursorWidth: 2,
                onChanged: (v) {
                  city = v;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    hintText: 'Enter Your City',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: 'City',
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(
                          25,
                          157,
                          117,
                          100,
                        ),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(34)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(
                          25,
                          157,
                          117,
                          100,
                        ),
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(34),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                cursorHeight: 25,
                cursorWidth: 2,
                maxLength: 10,
                onChanged: (v) {
                  monumber = v;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    hintText: 'Enter Your Mo.Number',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(
                          25,
                          157,
                          117,
                          100,
                        ),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(34)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(
                          25,
                          157,
                          117,
                          100,
                        ),
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(34),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                cursorHeight: 25,
                keyboardType: TextInputType.number,
                maxLength: 6,
                cursorWidth: 2,
                onChanged: (v) {
                  pincode = v;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    hintText: 'Enter Your Pincode',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: 'Pincode',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(
                        25,
                        157,
                        117,
                        100,
                      ),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(34)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(
                          25,
                          157,
                          117,
                          100,
                        ),
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(34),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (Name!.isNotEmpty &&
                        email!.isNotEmpty &&
                        city!.isNotEmpty &&
                        monumber!.isNotEmpty &&
                        pincode!.isNotEmpty) {
                      Navigator.of(context).popAndPushNamed('newinvoice');
                    } else {
                      Text('Fill Your details...');
                    }
                  });
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(
                      25,
                      157,
                      117,
                      100,
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all<Size>(Size(390, 70)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
