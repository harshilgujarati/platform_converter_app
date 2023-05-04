import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plateform_convter_app/controllers/providers/theme_provider.dart';
import 'package:plateform_convter_app/utils/bio_attributes.dart';
import 'package:provider/provider.dart';

class cupertino_settins_page extends StatefulWidget {
  const cupertino_settins_page({Key? key}) : super(key: key);

  @override
  State<cupertino_settins_page> createState() => _cupertino_settins_pageState();
}

class _cupertino_settins_pageState extends State<cupertino_settins_page> {
  @override
  bool isiphone = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File? image;
  DateTime initialDate = DateTime.now();
  DateTime? pickedDate;
  bool profileswitch = false;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return CupertinoPageScaffold(
      child: Container(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            CupertinoListTile(
                title: Text('Profile',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("Update Profile Data"),
                leading: Icon(CupertinoIcons.person, size: 30),
                trailing: CupertinoSwitch(
                  value: profileswitch,
                  onChanged: (value) {
                    setState(() {
                      profileswitch = value;
                    });
                  },
                )),
            (profileswitch == true)
                ? Column(
                    children: [
                      Form(
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
                                foregroundImage: image != null
                                    ? FileImage(File(image!.path))
                                    : null,
                                child: Icon(Icons.add_a_photo_outlined,
                                    size: w * 0.1),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.010,
                            ),
                            CupertinoTextFormFieldRow(
                              placeholder: "Enter your name",
                              textAlign: TextAlign.center,
                              onSaved: (val) {
                                bioname = val;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter Your  Name";
                                } else {
                                  return null;
                                }
                              },
                              controller: bionamecontroller,
                            ),
                            CupertinoTextFormFieldRow(
                              textAlign: TextAlign.center,
                              placeholder: "Enter your bio",
                              onSaved: (val) {
                                bio = val;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter Your bio";
                                } else {
                                  return null;
                                }
                              },
                              controller: biocontroller,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CupertinoButton(
                                  child: Text("SAVE"),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                    }
                                  },
                                ),
                                CupertinoButton(
                                  child: Text("CLEAR"),
                                  onPressed: () {
                                    bionamecontroller.clear();
                                    biocontroller.clear();
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(),
            SizedBox(
              height: h * 0.02,
            ),
            CupertinoListTile(
              title:
                  Text('Theme', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Change Theme"),
              leading: Icon(CupertinoIcons.moon_fill, size: 30),
              trailing: CupertinoSwitch(
                value: Provider.of<ThemeProvider>(context).themeModel.isDark,
                onChanged: (value) {
                  setState(() {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .changeTheme();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
