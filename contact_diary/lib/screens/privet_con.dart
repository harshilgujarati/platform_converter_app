import 'package:contact_diary/controller/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/attributes.dart';

class private_page extends StatefulWidget {
  const private_page({Key? key}) : super(key: key);

  @override
  State<private_page> createState() => _private_pageState();
}

class _private_pageState extends State<private_page> {
  LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context , listen: false).changeTheme();
            },
            icon: Icon(Icons.circle),
            iconSize: 36,
          ),
        ],
      ),
      body: (Globals.allContacts.isNotEmpty)
          ? ListView.builder(
        itemCount: Globals.allContacts.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              foregroundImage: (Globals.allContacts[i].image != null)  ? FileImage(Globals.allContacts[i].image!) : null,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("details_page",
                  arguments: Globals.allContacts[i]);
            },
            title: Text(
              "${Globals.allContacts[i].fullname}",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
                "+91 ${Globals.allContacts[i].phoneNumber} \n ${Globals.allContacts[i].email}"),
            trailing: IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.green,
              ),
              onPressed: () async {
                launchUrl(Uri.parse("tel: +91 ${Globals.allContacts[i].phoneNumber}"));
              },
            ),
          );
        },
      ) :Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.contact_page_outlined,
              size: 240,
            ),
            Text(
              "You have no contacts yet...",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed('add_contact');
          });
        },
      ),
    );
  }
}
