import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convter_app/utils/contact_attributes.dart';

class cupertino_chat_page extends StatefulWidget {
  const cupertino_chat_page({Key? key}) : super(key: key);

  @override
  State<cupertino_chat_page> createState() => _cupertino_chat_pageState();
}

class _cupertino_chat_pageState extends State<cupertino_chat_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    TimeOfDay initialTime = TimeOfDay.now();
    DateTime initialDate = DateTime.now();
    return CupertinoPageScaffold(
      child: (contactList.allContacts.isEmpty)
          ? Container(
              alignment: Alignment.center,
              child: Text("You have no chat's yet..."),
            )
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: (contactList.allContacts.isEmpty)
                    ? Container(
                        alignment: Alignment.center,
                        child: Text("You have no chat's yet..."),
                      )
                    : ListView.builder(
                        itemCount: contactList.allContacts.length,
                        itemBuilder: (context, index) {
                          return CupertinoListTile(
                            padding: EdgeInsets.all(14),
                            leadingSize: 56,
                            leading: CircleAvatar(
                              radius: 90,
                              foregroundImage:
                                  (contactList.allContacts[index].image != null)
                                      ? FileImage(
                                          contactList.allContacts[index].image!)
                                      : null,
                            ),
                            title: Text(
                                "${contactList.allContacts[index].fullname}",
                                style: TextStyle(fontSize: 19.5)),
                            subtitle:
                                Text("${contactList.allContacts[index].chat}",
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                            onTap: () {
                              showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      alignment: Alignment.center,
                                    );
                                  });
                            },
                            trailing: (contactList
                                        .allContacts[index].choosedDate !=
                                    null)
                                ? (contactList.allContacts[index].choosedTime!
                                            .hour >
                                        12)
                                    ? Text(
                                        "${contactList.allContacts[index].choosedDate!.day}/${contactList.allContacts[index].choosedDate!.month}/${contactList.allContacts[index].choosedDate!.year}, ${contactList.allContacts[index].choosedTime!.hour - 12}:${contactList.allContacts[index].choosedTime!.minute}")
                                    : Text(
                                        "${contactList.allContacts[index].choosedDate!.day}/${contactList.allContacts[index].choosedDate!.month}/${contactList.allContacts[index].choosedDate!.year}, ${contactList.allContacts[index].choosedTime!.hour}:${contactList.allContacts[index].choosedTime!.minute}")
                                : (initialTime.hour > 12)
                                    ? Text(
                                        "${initialDate.day}/${initialDate.month}/${initialDate.year}, ${initialTime.hour - 12}:${initialTime!.minute}")
                                    : Text(
                                        "${initialDate.day}/${initialDate.month}/${initialDate.year}, ${initialTime.hour}:${initialTime.minute}"),
                          );
                        },
                      ),
              ),
            ),
    );
  }
}
