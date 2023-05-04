import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';
import 'package:resume/screens/contactinfo.dart';

class fieldsslides extends StatefulWidget {
  const fieldsslides({Key? key}) : super(key: key);

  @override
  State<fieldsslides> createState() => _fieldsslidesState();
}

class _fieldsslidesState extends State<fieldsslides> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: NormalAppBar(
        title: "Resume workshop",
        iconName: Icons.picture_as_pdf_outlined,
        onPressed: () {},
        textcolor: Colors.white,
        fontssize: 25,
        Iconcolor: Colors.white,
        fontweights: FontWeight.bold,
      ),
      body: Padding(
        padding: EdgeInsets.all(6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Build Option',
                        style: TextStyle(
                          fontSize: size.width * 0.09,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: mainpurpulecolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/user.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tContact information",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('contactinfo');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/briefcase.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tCarrier Objective",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('carrierobjective');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/user.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tPersonal Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('personaldetails');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/mortarboard.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tEducation",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('education');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/thinking.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tExperiences",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: mainpurpulecolor,
                              ),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('experience');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/experience.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tTechnical Skills",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('techskill');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/open-book.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tIntrest/Hobbies",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('interest');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/project.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tProjects",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('project');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/achievement.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tAchievement",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('achievement');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/handshake.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tReference",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('reference');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 01,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/icons/declaration.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "\n\t\tDeclaration",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: mainpurpulecolor),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 0.2,
                          ),
                          Container(
                            child: Text(
                              "\t\tname,mobile,etc.",
                              style: TextStyle(
                                fontSize: 21,
                                color: mainpurpulecolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('declaration');
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: size.height * 0.06,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
