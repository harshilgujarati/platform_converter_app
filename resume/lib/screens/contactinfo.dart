import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';

class contactinfo extends StatefulWidget {
  const contactinfo({Key? key}) : super(key: key);

  @override
  State<contactinfo> createState() => _contactinfoState();
}

class _contactinfoState extends State<contactinfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        title: "Contact Information",
        iconName: Icons.person_outline_outlined,
        onPressed: () {},
        textcolor: mainpurpilebgcolor,
        fontssize: 30,
        Iconcolor: mainpurpilebgcolor,
        fontweights: FontWeight.bold,
      ),
      body: Container(
        color: mainpurpilebgcolor,
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\nYour Information',
                        style: TextStyle(
                          fontSize: size.width * 0.09,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: mainpurpulecolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              // CircleAvatar(
              //   child: Image(image: AssetImage('assets/gif/fileinputing.gif'),),
              //   radius: 80,
              // ),
              Simpletextfield(
                hint: "Enter Your Name",
                label: "Your Name",
                val: username,
                nameofstoreplace: username,
                preIcon: Icon(
                  Icons.person_2_outlined,
                  size: size.width * 0.09,
                ),
              ),
              Simpletextfield(
                hint: "Enter Your Email",
                label: "Your Email",
                val: useremail,
                nameofstoreplace: username,
                preIcon: Icon(
                  Icons.email_outlined,
                  size: size.width * 0.09,
                ),
              ),
              Simpletextfield(
                hint: "Enter Your Mo.number",
                label: "Your Mo.number",
                val: userphone,
                nameofstoreplace: userphone,
                preIcon: Icon(
                  Icons.phone_iphone_outlined,
                  size: size.width * 0.09,
                ),
              ),
              Simpletextfield(
                hint: "Enter Your Address",
                label: "Your Address",
                val: useradddress,
                nameofstoreplace: username,
                preIcon: Icon(
                  Icons.place_outlined,
                  size: size.width * 0.09,
                ),
              ),
              SizedBox(
                height: size.height * 0.24,
              ),
              FloatingActionButton.large(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: mainpurpulecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.065,
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
