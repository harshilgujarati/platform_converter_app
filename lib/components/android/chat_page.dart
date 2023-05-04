import 'package:flutter/material.dart';
import 'package:plateform_convter_app/utils/contact_attributes.dart';

class chat_page extends StatefulWidget {
  const chat_page({Key? key}) : super(key: key);

  @override
  State<chat_page> createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (contactList.allContacts.isEmpty)
          ? Container(
              alignment: Alignment.center,
              child: Text("No any chat yet..."),
            )
          : ListView.builder(
              itemCount: contactList.allContacts.length,
              itemBuilder: (context, i) {
                TimeOfDay initialTime = TimeOfDay.now();
                DateTime initialDate = DateTime.now();
                return ListTile(
                  leading: CircleAvatar(
                    foregroundImage: (contactList.allContacts[i].image != null)
                        ? FileImage(contactList.allContacts[i].image!)
                        : null,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed("details_page",
                        arguments: contactList.allContacts[i]);
                  },
                  title: Text(
                    "${contactList.allContacts[i].fullname}",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text("${contactList.allContacts[i].chat}"),
                  trailing: (contactList.allContacts[i].choosedDate != null)
                      ? (contactList.allContacts[i].choosedTime!.hour > 12)
                          ? Text(
                              "${contactList.allContacts[i].choosedDate!.day} / ${contactList.allContacts[i].choosedDate!.month} / ${contactList.allContacts[i].choosedDate!.year}, ${contactList.allContacts[i].choosedTime!.hour - 12}:${contactList.allContacts[i].choosedTime!.minute}")
                          : Text(
                              "${contactList.allContacts[i].choosedDate!.day} / ${contactList.allContacts[i].choosedDate!.month} / ${contactList.allContacts[i].choosedDate!.year}, ${contactList.allContacts[i].choosedTime!.hour}:${contactList.allContacts[i].choosedTime!.minute}")
                      : (initialTime.hour > 12)
                          ? Text(
                              "${initialDate.day} / ${initialDate.month} / ${initialDate.year}, ${initialTime.hour - 12}:${initialTime!.minute}")
                          : Text(
                              "${initialDate.day} / ${initialDate.month} / ${initialDate.year}, ${initialTime.hour}:${initialTime.minute}"),
                );
              },
            ),
    );
  }
}
