import 'package:flutter/material.dart';
import 'package:plateform_convter_app/utils/contact_attributes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controllers/providers/app_model_provider.dart';

class call_page extends StatefulWidget {
  const call_page({Key? key}) : super(key: key);

  @override
  State<call_page> createState() => _call_pageState();
}

class _call_pageState extends State<call_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (contactList.allContacts.isEmpty)
          ? Container(
              alignment: Alignment.center,
              child: Text("No call history yet..."),
            )
          : ListView.builder(
              itemCount: contactList.allContacts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
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
                  trailing: IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    onPressed: () async {
                      launchUrl(Uri.parse(
                          "tel: +91 ${contactList.allContacts[i].phoneNumber}"));
                    },
                  ),
                );
              },
            ),
    );
  }
}
