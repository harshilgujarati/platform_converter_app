import 'package:flutter/material.dart';
import 'package:media_booster_app/screens/views/video_homescreen.dart';

import '../../componets/audios.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> alltabs = [
    {
      'title': 'Music',
      'icon': Icon(Icons.music_note),
      'page': tracks(),
    },
    {
      'title': 'Video',
      'icon': Icon(Icons.video_camera_back_sharp),
      'page': videoList_screen(),
    },
  ];

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: alltabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _height = size.height;
    double _width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Wynk Player",
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          padding: EdgeInsets.all(9),
          labelColor: Colors.black,
          isScrollable: true,
          controller: tabController,
          tabs: alltabs
              .map((e) => Tab(
            text: e["title"],
            icon: e['icon'],
          ))
              .toList(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('videolist');
            },
            icon: Icon(Icons.video_collection_rounded),
          )
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: alltabs.map<Widget>((e) => e['page']).toList(),
      ),
    );
  }
}
