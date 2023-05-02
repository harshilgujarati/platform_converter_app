import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class cupertino_take_user_detail extends StatefulWidget {
  const cupertino_take_user_detail({Key? key}) : super(key: key);

  @override
  State<cupertino_take_user_detail> createState() =>
      _cupertino_take_user_detailState();
}

class _cupertino_take_user_detailState
    extends State<cupertino_take_user_detail> {
  @override
  bool isiphone = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File? image;
  DateTime initialDate = DateTime.now();
  DateTime? pickedDate;
  bool profileswitch = false;
  bool themeswitch = false;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return CupertinoPageScaffold(
      child: Container(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text("CHOOSE PHOTOS"),
                        actions: [
                          GestureDetector(
                            onTap: () async {
                              ImagePicker picker = ImagePicker();
                              XFile? img = await picker.pickImage(
                                  source: ImageSource.camera);
                              if (img != null) {
                                setState(() {
                                  image = File(img.path);
                                });
                                Navigator.pop(context);
                              }
                            },
                            child: Icon(
                              CupertinoIcons.camera,
                              size: 75,
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              ImagePicker picker = ImagePicker();
                              XFile? img = await picker.pickImage(
                                  source: ImageSource.gallery);
                              if (img != null) {
                                setState(() {
                                  image = File(img.path);
                                });
                                Navigator.pop(context);
                              }
                            },
                            child: Icon(
                              CupertinoIcons.photo,
                              size: 75,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  radius: h * 0.085,
                  foregroundImage:
                      image != null ? FileImage(File(image!.path)) : null,
                  child: Icon(Icons.add_a_photo_outlined, size: w * 0.1),
                ),
              ),
              SizedBox(
                height: h * 0.030,
              ),
              CupertinoTextFormFieldRow(
                prefix: Icon(CupertinoIcons.person),
                placeholder: "Full Name",
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Your Full Name";
                  } else {
                    return null;
                  }
                },
                // controller: ,
              ),
              SizedBox(
                height: h * 0.010,
              ),
              CupertinoTextFormFieldRow(
                prefix: Icon(CupertinoIcons.phone),
                placeholder: "Phone Number",
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Your Phone Number";
                  } else {
                    return null;
                  }
                },
                // controller: ,
              ),
              SizedBox(
                height: h * 0.010,
              ),
              CupertinoTextFormFieldRow(
                prefix: Icon(CupertinoIcons.chat_bubble_text),
                placeholder: "Chat Conversation",
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Conversation";
                  } else {
                    return null;
                  }
                },
                // controller: ,
              ),
              SizedBox(
                height: h * 0.015,
              ),
              Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Icon(CupertinoIcons.calendar),
                  SizedBox(
                    width: w * 0.03,
                  ),
                  Text(
                    "${initialDate.toLocal()}".split(' ')[0],
                  ),
                  // showCupertinoModalPopup(
                  //   context: context,
                  //   builder: (context)  => Container(
                  //     height: 350,
                  //     child: CupertinoDatePicker(
                  //       minimumYear: 1901,
                  //       maximumYear: 2099,
                  //       onDateTimeChanged: (value) {
                  //         setState(() {
                  //           initialDate = value;
                  //         });
                  //       },
                  //       initialDateTime: initialDate,
                  //     ),
                  //   ),
                  // );
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
