import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

//ALL COLORS IN APP
Color mainpurpulecolor = Colors.deepPurpleAccent;
Color mainpurpilebgcolor = Colors.deepPurple.shade50;
Color appbgcolorgrey = Colors.grey.shade200;

//VARIABLES FOR TEXTFIELD IN LOGIN PAGE
String email = "";
String username = "";
String useremail = "";
String userphone = "";
String useradddress = "";



//TEXTEDITING CONTROLLER FOR LOGIN ACCOUNT
TextEditingController e = TextEditingController();
TextEditingController password = TextEditingController();

//APPBAR IN APPLICATION
class NormalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData iconName;
  final VoidCallback onPressed;
  final Color textcolor;
  final double fontssize;
  final fontweights;
  final Color Iconcolor;

  NormalAppBar(
      {required this.title,
      required this.iconName,
      required this.onPressed,
      required this.textcolor,
      required this.fontssize,
      required this.Iconcolor,
      required this.fontweights});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: textcolor,
          fontSize: fontssize,
          fontWeight: fontweights,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 40,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        IconButton(
          icon: Icon(
            iconName,
            size: 40,
          ),
          onPressed: onPressed,
          color: Iconcolor,
        ),
      ],
      centerTitle: true,
      backgroundColor: mainpurpulecolor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

//IMAGE IN APPLICATION
class Simpleimage extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  Simpleimage({required this.imagePath, this.width = 200, this.height = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

//ELEVATEDBUTTON IN APPLICATION
class variables {
  static String email = "";
  static String password = "";
  static int length = 0;
  static String name = "";
}

class Elbutton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textColor;

  Elbutton({
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 18.0,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: buttonColor ?? Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

//PASSWORD TEXT
Widget GetPasswordFromUser(String logindatails) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      style: TextStyle(color: mainpurpulecolor),
      obscureText: true,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        prefixIconColor: mainpurpulecolor,
        labelText: logindatails,
        focusColor: mainpurpulecolor,
        hintText: "Enter vaild Password...",
        hintStyle:
            TextStyle(color: mainpurpulecolor, fontWeight: FontWeight.bold),
        labelStyle: TextStyle(color: mainpurpulecolor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          borderSide: BorderSide(
            color: mainpurpulecolor,
            width: 1.5,
          ),
        ),
        disabledBorder: UnderlineInputBorder(),
      ),
      onSaved: (v) {
        password = password;
      },
      validator: (v) {
        if (v!.isEmpty) {
          return "Enter vaild Password...";
        } else
          return null;
      },
    ),
  );
}

//SIMPLE TEXT FOR APPLICATION
Widget Simpletextfield({
  required String hint,
  required String label,
  required String val,
  required String nameofstoreplace,
  Icon? preIcon,
})
{
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      style: TextStyle(color: mainpurpulecolor),
      decoration: InputDecoration(
        prefixIcon: preIcon,
        prefixIconColor: mainpurpulecolor,
        labelText: label,
        focusColor: mainpurpulecolor,
        hintText: hint,
        hintStyle:
            TextStyle(color: mainpurpulecolor, fontWeight: FontWeight.bold),
        labelStyle: TextStyle(color: mainpurpulecolor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          borderSide: BorderSide(
            color: mainpurpulecolor,
            width: 1.5,
          ),
        ),
      ),
      onSaved: (val) {
        nameofstoreplace = val!;
      },
      validator: (val) {
        if (val!.isEmpty) {
          return "Enter vaild email...";
        } else
          return null;
      },
    ),
  );
}
