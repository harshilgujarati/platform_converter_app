import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platfrom_converter/controllers/providers/theme_provider.dart';
import 'package:platfrom_converter/utils/attributes.dart';
import 'package:provider/provider.dart';

import '../models/contact_model.dart';

class take_user_details extends StatefulWidget {
  const take_user_details({Key? key}) : super(key: key);

  @override
  State<take_user_details> createState() => _take_user_detailsState();
}

class _take_user_detailsState extends State<take_user_details> {
  int currentStepperValue = 0;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  DateTime initialDate = DateTime.now();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plateform Conveter"),
        actions: [
          Switch(
              value: Provider.of<ThemeProvider>(context).themeModel.isDark,
              onChanged: (val) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changeTheme();
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 28,
            ),
            Stepper(
              type: StepperType.vertical,
              currentStep: currentStepperValue,
              onStepContinue: () {
                setState(() {
                  if (currentStepperValue < 5) {
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
                        backgroundImage:
                            _image != null ? FileImage(_image!) : null,
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
                Step(
                    title: Text("Pick Date"),
                    content: Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: initialDate,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050),
                            );

                            if (pickedDate != null) {
                              print("---------");
                              print(
                                  "${pickedDate.day} - ${pickedDate.month} - ${pickedDate.year}");
                            }
                            print("---------");
                          },
                          icon: Icon(
                            Icons.date_range_outlined,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Pick Date"),
                        )
                      ],
                    )),
                Step(
                  title: Text("Pick Time"),
                  content: Text("Pick Time"),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                String name = namecontroller.text;
                String phone = phonecontroller.text;
                String email = emailcontroller.text;

                Contact c1 = Contact(
                    fullname: name,
                    email: email,
                    phoneNumber: phone,
                    image: _image);

                contactList.allContacts.add(c1);

                Navigator.of(context).pushNamed('chat_page');

                namecontroller.clear();
                phonecontroller.clear();
                emailcontroller.clear();
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
