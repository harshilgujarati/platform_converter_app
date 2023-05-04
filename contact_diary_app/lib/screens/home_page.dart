import 'package:contact_diary_app/main.dart';
import 'package:contact_diary_app/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: Icon(Icons.circle),
            iconSize: 36,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed("login_page");
              });
            },
            icon: Icon(Icons.more_vert),
            iconSize: 30,
          ),
        ],
      ),
      body: (Globals.allContacts.isNotEmpty)
          ? ListView.builder(
              itemCount: Globals.allContacts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed("details_page",
                          arguments: Globals.allContacts[i]);
                    });
                  },
                  title: Text(
                    "${Globals.allContacts[i].Fullname}",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                      "+91 ${Globals.allContacts[i].phone} \n ${Globals.allContacts[i].email}"),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    onPressed: () async {
                      setState(() {
                        launchUrl(Uri.parse("tel: +91 ${Globals.allContacts[i].phone}"));
                      });
                    },
                  ),
                );
              },
            )
          : Container(
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
                          color: Colors.black,
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
            Navigator.of(context).pushNamed('add_new_contact');
          });
        },
      ),
    );
  }
}
