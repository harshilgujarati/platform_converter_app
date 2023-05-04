import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/contact_model.dart';
import '../utils/attributes.dart';

class details_page extends StatefulWidget {
  const details_page({Key? key}) : super(key: key);

  @override
  State<details_page> createState() => _details_pageState();
}

class _details_pageState extends State<details_page> {
  @override
  Widget build(BuildContext context) {
    Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "details Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 70,
                  foregroundImage: (contact.image! != null)  ? FileImage(contact.image!) : null,
                ),
                FloatingActionButton.small(
                  onPressed: () {},
                  child: Icon(Icons.edit),
                ),
                FloatingActionButton.small(
                  onPressed: () async {
                    Globals.allContacts.remove(contact);
                   await Navigator.of(context).pushNamedAndRemoveUntil('/' , (route) => false);
                   setState(() {});
                  },
                  child: Icon(Icons.delete),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${contact.fullname}",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Mo.number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${contact.phoneNumber}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "E-mail",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${contact.email}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () async {
                    setState(() {
                      launchUrl(Uri.parse("tel: +91${contact.phoneNumber}"));
                    });
                  },
                  child: Icon(Icons.phone),
                ),
                SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      launchUrl(Uri.parse("sms: +91${contact.phoneNumber}"));
                    });
                  },
                  child: Icon(Icons.sms),
                ),
                SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      launchUrl(Uri.parse(
                          "mailto:${contact.email}?subject=hiii.... ${contact.fullname}&body=hello world"));
                    });
                  },
                  child: Icon(Icons.email),
                ),
                SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Share.share("${contact.phoneNumber}");
                    });
                  },
                  child: Icon(Icons.share),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
