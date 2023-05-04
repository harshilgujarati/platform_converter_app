import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convter_app/utils/contact_attributes.dart';

class cupertino_call_page extends StatefulWidget {
  const cupertino_call_page({Key? key}) : super(key: key);

  @override
  State<cupertino_call_page> createState() => _cupertino_call_pageState();
}

class _cupertino_call_pageState extends State<cupertino_call_page> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: (contactList.allContacts.isEmpty)
          ? Container(
        alignment: Alignment.center,
        child: Text("You have no call's yet..."),
      )
          : ListView.builder(
        itemCount: contactList.allContacts.length,
        itemBuilder: (context, index) {
          return CupertinoListTile(
            padding: const EdgeInsets.all(14),
            leadingToTitle: 30,
            leadingSize: 55,
            leading: CircleAvatar(
              radius: 30,
              foregroundImage:
              (contactList.allContacts[index].image != null)
                  ? FileImage(
                  contactList.allContacts[index].image!)
                  : null,
            ),
            title: Text(
              contactList.allContacts[index].fullname,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              contactList.allContacts[index].chat,
              style: const TextStyle(fontSize: 14),
            ),
            trailing: const Icon(CupertinoIcons.phone),
          );
        },
      ),
    );
  }
}
