import 'package:contact_diary_app/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton.small(
                  onPressed: () {},
                  child: Icon(Icons.edit),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton.small(
                  onPressed: () {},
                  child: Icon(Icons.delete),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${contact.Fullname}",
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
                  "${contact.phone}",
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
                  width: 24,
                ),
                FloatingActionButton(
                  onPressed: () async {
                    setState(() {
                      launchUrl(Uri.parse("tel: +91${contact.phone}"));
                    });
                  },
                  child: Icon(Icons.phone),
                ),
                SizedBox(
                  width: 26,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      launchUrl(Uri.parse("sms: +91${contact.phone}"));
                    });
                  },
                  child: Icon(Icons.sms),
                ),
                SizedBox(
                  width: 26,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      launchUrl(Uri.parse(
                          "mailto:${contact.email}?subject=hiii.... ${contact.Fullname}&body=hello world"));
                    });
                  },
                  child: Icon(Icons.email),
                ),
                SizedBox(
                  width: 26,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.share),
                ),
                SizedBox(
                  width: 26,
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
