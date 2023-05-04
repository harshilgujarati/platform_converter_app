import 'package:contact_d/utils/theme_utils.dart';
import 'package:contact_d/views/screens/S_screen.dart';
import 'package:contact_d/views/screens/Viewcontact.dart';
import 'package:contact_d/views/screens/makenewcontact.dart';
import 'package:flutter/material.dart';
import 'models/globals.dart';

void main() {
  runApp(
    Contact(),
  );
}

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.ligthTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: "logoscreen",
      routes: {
        "HomePage": (context) => HomePage(),
        "viewcontact": (context) => viewContact(),
        "addcontact": (context) => makecontact(),
        "logoscreen": (context) => logoscreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isDarkMode = false;
int i = 18;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.ligthTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: (isDarkMode == false) ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Contacts",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.circle, size: 36),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('viewcontact');
                },);
              },
              icon: Icon(Icons.more_vert, size: 32),
            ),
          ],
          foregroundColor: (isDarkMode == true) ? Colors.white : Colors.black,
          backgroundColor: (isDarkMode == true) ? Colors.green : Colors.orange,
        ),
        body:(Globals.allContact.isNotEmpty) ?
        ListView.builder(
          itemCount: i,
          itemBuilder: (context,i) {
          return ListTile(
            onTap: (){
              setState(() {
                Navigator.of(context).pushNamed('Makenewcontact');
              },);
            },
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage('assets/images/a06bc59470b0e279d44e99d8687ead23.jpg'),
            ),
            title: Text("Harshil Gujarati",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            subtitle: Text("+91 9904862806",style: TextStyle(fontSize: 18,),),
            trailing: IconButton(onPressed: (){},icon: Icon(Icons.phone,color: Colors.green,size: 36,),),
          );
        },)

            : Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.contact_page_rounded,
                size: 200,
              ),
              Text(
                "You have no contacts yet..",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('addcontact');
              });
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 34,
            ),
          ),
        ),
      ),
    );
  }
}
