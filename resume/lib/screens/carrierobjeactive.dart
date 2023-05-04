import 'package:flutter/material.dart';
import 'package:resume/modals/globals.dart';

class currierobjective extends StatefulWidget {
  const currierobjective({Key? key}) : super(key: key);

  @override
  State<currierobjective> createState() => _currierobjectiveState();
}

class _currierobjectiveState extends State<currierobjective> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NormalAppBar(
        title: 'Carrier Objective',
        iconName: Icons.shopping_bag_outlined,
        onPressed: () {},
        textcolor: mainpurpilebgcolor,
        fontssize: 28,
        Iconcolor: mainpurpilebgcolor,
        fontweights: FontWeight.bold,
      ),
      body: Container(
        color: mainpurpilebgcolor,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\t\t\t\t\t\t\tCarrier Objeactive",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: mainpurpulecolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: size.height * 0.2,
                    width: size.width * 0.85,
                    alignment: AlignmentDirectional.topStart,
                    child: TextField(
                      style: TextStyle(
                        color: mainpurpulecolor,
                      ),
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: mainpurpulecolor, width: 1.5)),
                        hintText: 'Discription',
                        fillColor: mainpurpulecolor,
                        labelStyle: TextStyle(
                          color: mainpurpulecolor,
                        ),
                        hintStyle: TextStyle(
                          color: mainpurpulecolor,
                        ),
                        focusColor: mainpurpulecolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.25,
              width: size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\t\t\t\t\t\t\tCurrent Designation",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: mainpurpulecolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: size.height * 0.2,
                    width: size.width * 0.85,
                    alignment: AlignmentDirectional.topStart,
                    child: TextField(
                      style: TextStyle(
                        color: mainpurpulecolor,
                      ),
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: mainpurpulecolor,
                              width: 1.5,
                            )),
                        hintText: 'Discription',
                        fillColor: mainpurpulecolor,
                        labelStyle: TextStyle(
                          color: mainpurpulecolor,
                        ),
                        hintStyle: TextStyle(
                          color: mainpurpulecolor,
                        ),
                        focusColor: mainpurpulecolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: mainpurpulecolor,
        splashColor: mainpurpilebgcolor,
        child: Icon(
          Icons.done_all_outlined,
          color: mainpurpilebgcolor,
          size: size.width * 0.13,
        ),
      ),
    );
  }
}
