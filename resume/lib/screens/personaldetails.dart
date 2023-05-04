import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';

class personaldetails extends StatefulWidget {
  const personaldetails({Key? key}) : super(key: key);

  @override
  State<personaldetails> createState() => _personaldetailsState();
}

class _personaldetailsState extends State<personaldetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(
        title: "Personal Details",
        iconName: Icons.person_2_outlined,
        onPressed: () {},
        textcolor: mainpurpilebgcolor,
        fontssize: 28,
        Iconcolor: mainpurpilebgcolor,
        fontweights: FontWeight.bold,
      ),
    );
  }
}
