import 'package:flutter/material.dart';
import '../../utils/theme_utils.dart';


class viewContact extends StatefulWidget {
  const viewContact({Key? key}) : super(key: key);

  @override
  State<viewContact> createState() => _viewContactState();
}

bool isDarkMode = false;

class _viewContactState extends State<viewContact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.ligthTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 38,
            ),
          ),
          title: Text(
            "Contacts",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.circle,
                size: 36,
                color:
                    (isDarkMode == true) ? Colors.black : Colors.grey.shade500,
              ),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, size: 32),
            ),
          ],
          foregroundColor: (isDarkMode == true) ? Colors.white : Colors.black,
          backgroundColor: (isDarkMode == true) ? Colors.orange : Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: (isDarkMode == true) ? Colors.white : Colors.black38,
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  CircleAvatar(
                    radius: 84,
                    foregroundImage: AssetImage(
                        'assets/images/a06bc59470b0e279d44e99d8687ead23.jpg'),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete,
                        size: 38,
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit,
                        size: 38,
                        color:
                            (isDarkMode == true) ? Colors.black : Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Harshil Gujarati",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: (isDarkMode == true) ? Colors.black : Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "+91 99048 62806",
                    style: TextStyle(
                      color: (isDarkMode == true) ? Colors.black : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: (isDarkMode == true) ? Colors.black : Colors.white,
                height: 6,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () async {},
                    elevation: 0,
                    child: Icon(Icons.phone),
                    backgroundColor: Colors.green,
                    foregroundColor:
                        (isDarkMode == true) ? Colors.black : Colors.white,
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () async {},
                    elevation: 0,
                    child: Icon(Icons.message),
                    backgroundColor: Colors.orange,
                    foregroundColor:
                        (isDarkMode == true) ? Colors.black : Colors.white,
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () {},
                    elevation: 0,
                    child: Icon(Icons.mail),
                    backgroundColor: Colors.blueAccent,
                    foregroundColor:
                        (isDarkMode == true) ? Colors.black : Colors.white,
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () async {},
                    elevation: 0,
                    child: Icon(Icons.share),
                    backgroundColor: Colors.deepOrange,
                    foregroundColor:
                        (isDarkMode == true) ? Colors.black : Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                  color: (isDarkMode == true) ? Colors.black : Colors.white,
                  height: 6),
            ],
          ),
        ),
      ),
    );
  }
}
