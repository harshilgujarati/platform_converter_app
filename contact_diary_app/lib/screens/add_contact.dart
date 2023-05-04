import 'package:contact_diary_app/models/contact.dart';
import 'package:contact_diary_app/utils/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_contact extends StatefulWidget {
  const add_contact({Key? key}) : super(key: key);

  @override
  State<add_contact> createState() => _add_contactState();
}

class _add_contactState extends State<add_contact> {
  int currentStepperValue = 0;
  TextEditingController name_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();

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
              String name = name_controller.text;
              String email = email_controller.text;
              String phone = phone_controller.text;

              Contact c1 = Contact(Fullname: name, phone: phone, email: email);

              Globals.allContacts.add(c1);

              Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);

              setState(() {});

              name_controller.clear();
              email_controller.clear();
              phone_controller.clear();
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
                      minRadius: 60,
                      child: IconButton(
                        onPressed: () {},
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
                  keyboardType: TextInputType.name,
                  controller: name_controller,
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
                  keyboardType: TextInputType.number,
                  controller: phone_controller,
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
                  keyboardType: TextInputType.emailAddress,
                  controller: email_controller,
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
