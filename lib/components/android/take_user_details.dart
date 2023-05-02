import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plateform_convter_app/components/android/call_page.dart';
import 'package:plateform_convter_app/components/android/chat_page.dart';
import 'package:plateform_convter_app/components/android/settings.dart';
import 'package:plateform_convter_app/utils/contact_attributes.dart';
import 'package:provider/provider.dart';
import '../../controllers/providers/app_model_provider.dart';
import '../../models/contact_model.dart';

class take_user_details extends StatefulWidget {
  const take_user_details({Key? key}) : super(key: key);

  @override
  State<take_user_details> createState() => _take_user_detailsState();
}

class _take_user_detailsState extends State<take_user_details> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController chatcontroller = TextEditingController();

  DateTime initialDate = DateTime.now();

  TimeOfDay initialTime = TimeOfDay.now();
  DateTime? pickedDate;
  TimeOfDay? pickedTime;

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
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    int initialIndex = 0;
    PageController pageController = PageController();
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          key: scaffoldKey,
          appBar: AppBar(
            title: Text("Plateform Conveter"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.call)),
              Tab(icon: Icon(Icons.settings)),
            ]),
            actions: [
              Switch(
                value: Provider.of<App_provider>(context).appModel.isiphone,
                onChanged: (val) {
                  Provider.of<App_provider>(context, listen: false).changeApp();
                },
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    minRadius: 60,
                    child: IconButton(
                      onPressed: _getImageFromCamera,
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        size: 36,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: namecontroller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: phonecontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter Your Phone",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: chatcontroller,
                      decoration: InputDecoration(
                        hintText: "Chat Conversation",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          pickedDate = await showDatePicker(
                            context: context,
                            initialDate: initialDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050),
                          );
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.date_range_outlined,
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          pickedDate = await showDatePicker(
                            context: context,
                            initialDate: initialDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050),
                          );
                          setState(() {});
                        },
                        child: (pickedDate == null)
                            ? Text(
                                "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}")
                            : Text(
                                "${pickedDate!.day} / ${pickedDate!.month} / ${pickedDate!.year}"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          pickedTime = await showTimePicker(
                            context: context,
                            initialTime: initialTime,
                          );
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.watch_later_outlined,
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          pickedTime = await showTimePicker(
                            context: context,
                            initialTime: initialTime,
                          );
                          setState(() {});
                        },
                        child: (pickedTime == null)
                            ? (initialTime.hour >= 12)
                                ? Text(
                                    "${initialTime.hour - 12} : ${initialTime.minute}  ${initialTime.period.name}")
                                : Text(
                                    "${initialTime.hour} : ${initialTime.minute}  ${initialTime.period.name}")
                            : (pickedTime!.hour > 12)
                                ? Text(
                                    "${pickedTime!.hour - 12} : ${pickedTime!.minute} ${pickedTime!.period.name}")
                                : Text(
                                    "${pickedTime!.hour} : ${pickedTime!.minute} ${pickedTime!.period.name}"),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String name = namecontroller.text;
                      String phone = phonecontroller.text;
                      String chat = chatcontroller.text;

                      Contact c1 = Contact(
                          fullname: name,
                          chat: chat,
                          phoneNumber: phone,
                          image: _image);

                      contactList.allContacts.add(c1);

                      namecontroller.clear();
                      phonecontroller.clear();
                      chatcontroller.clear();
                    },
                    child: Text("SAVE"),
                  ),
                ],
              ),
              chat_page(),
              call_page(),
              settings_page(),
            ],
          ),
        ));
  }
}
