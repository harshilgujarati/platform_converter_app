import 'dart:io';
import 'package:contact_diary/models/contact_model.dart';
import 'package:contact_diary/utils/attributes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class add_contact extends StatefulWidget {
  const add_contact({Key? key}) : super(key: key);

  @override
  State<add_contact> createState() => _add_contactState();
}

class _add_contactState extends State<add_contact> {
  int currentStepperValue = 0;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  File? _image;
  Future<void> _getImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Add",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.checkmark_alt,
              size: 38,
            ),
            onPressed: () {

              String name = namecontroller.text;
              String phone = phonecontroller.text;
              String email = emailcontroller.text;

              Contact c1 = Contact(fullname: name, email: email, phoneNumber: phone,image: _image);

              Globals.allContacts.add(c1);

              Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);

              namecontroller.clear();
              phonecontroller.clear();
              emailcontroller.clear();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 28,
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: double.infinity,
            color: Colors.purple.shade100,
            child: Text(
              "Fill Your details",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Stepper(
            type: StepperType.vertical,
            currentStep: currentStepperValue,
            onStepContinue: () {
              setState(() {
                if (currentStepperValue < 3) {
                  currentStepperValue++;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (currentStepperValue > 0) {
                  currentStepperValue--;
                }
              });
            },
            onStepTapped: (val) {},
            steps: [
              Step(
                title: Text('Add Pic'),
                content: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: _image != null ? FileImage(_image!) : null,
                      minRadius: 60,
                      child: IconButton(
                        onPressed: _getImageFromCamera,
                        icon: Icon(
                          Icons.add,
                          size: 36,
                        ),
                      ),
                    ),
                  ],
                ),
                isActive: (currentStepperValue >= 0) ? true : false,
                state: (currentStepperValue == 0)
                    ? StepState.editing
                    : StepState.indexed,
              ),
              Step(
                title: Text('Enter Name'),
                content: TextField(
                  controller: namecontroller,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    enabledBorder: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(),
                  ),
                ),
                isActive: (currentStepperValue >= 1) ? true : false,
                state: (currentStepperValue == 1)
                    ? StepState.editing
                    : StepState.indexed,
              ),
              Step(
                title: Text('Enter Phone'),
                content: TextField(
                  controller: phonecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Your Phone",
                    hintStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    enabledBorder: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(),
                  ),
                ),
                isActive: (currentStepperValue >= 2) ? true : false,
                state: (currentStepperValue == 2)
                    ? StepState.editing
                    : StepState.indexed,
              ),
              Step(
                title: Text('Enter Email'),
                content: TextField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    enabledBorder: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(),
                  ),
                ),
                isActive: (currentStepperValue >= 3) ? true : false,
                state: (currentStepperValue == 3)
                    ? StepState.complete
                    : StepState.indexed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
