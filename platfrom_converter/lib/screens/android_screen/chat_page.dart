import 'package:flutter/material.dart';
import 'package:platfrom_converter/utils/attributes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/providers/theme_provider.dart';

class chat_page extends StatefulWidget {
  const chat_page({Key? key}) : super(key: key);

  @override
  State<chat_page> createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Platefrom Conveter"),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).themeModel;
            },
            icon: Icon(Icons.circle),
          )],
      ),
      body: ListView.builder(
        itemCount: contactList.allContacts.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              foregroundImage: (contactList.allContacts[i].image != null)  ? FileImage(contactList.allContacts[i].image!) : null,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("details_page",
                  arguments: contactList.allContacts[i]);
            },
            title: Text(
              "${contactList.allContacts[i].fullname}",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
                "+91 ${contactList.allContacts[i].phoneNumber} \n ${contactList.allContacts[i].email}"),
            trailing: IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.green,
              ),
              onPressed: () async {
                launchUrl(Uri.parse("tel: +91 ${contactList.allContacts[i].phoneNumber}"));
              },
            ),
          );
        },
      ),
    );
  }
}
