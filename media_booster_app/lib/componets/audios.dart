import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/providers/song_providers.dart';
import '../utils/song_list.dart';

class tracks extends StatefulWidget {
  const tracks({Key? key}) : super(key: key);

  @override
  State<tracks> createState() => _tracksState();
}

class _tracksState extends State<tracks> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _height = size.height;
    double _width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: songimages.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage(
                            songimages[index],
                          ),
                          fit: BoxFit.fill)),
                ),
                title: Text(songname[index]),
                subtitle: Text(Moviename[index]),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
                onTap: () {
                  Provider.of<MusicPlayerProvider>(context, listen: false)
                      .getIndex(index);
                  Provider.of<MusicPlayerProvider>(context, listen: false)
                      .initAudio();
                  Navigator.of(context)
                      .pushNamed("music-play", arguments: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
