import 'package:flutter/material.dart';
import 'package:prprectice742023/screens/second_page.dart';

void main() {
  runApp(
    StartingApp(),
  );
}

class StartingApp extends StatefulWidget {
  const StartingApp({Key? key}) : super(key: key);

  @override
  State<StartingApp> createState() => _StartingAppState();
}

class _StartingAppState extends State<StartingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "Homepage",
      routes: {
        "/": (context) => Myapp(),
        "Homepage": (context) => MyApp(),
      },
      debugShowCheckedModeBanner: false,);
  }
}



class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double km = 0.0;
  double meter = 0.0;
  double celsius = 0.0;

  double kmtomil = 0.0;
  double metertocm = 0.0;
  double cltofnhit = 0.0;

  TextEditingController kmController = TextEditingController();
  TextEditingController meterController = TextEditingController();
  TextEditingController ClController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Calcutaor"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: kmController,
                  onChanged: (v) {
                    setState(() {
                      km = double.parse(v);
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: meterController,
                  onChanged: (v) {
                    setState(() {
                      meter = double.parse(v);
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: ClController,
                  onChanged: (v) {
                    setState(() {
                      celsius = double.parse(v);
                    });
                  },
                ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kmtomil = km * 0.621371;
                      });
                    },
                    child: Text("GET KM TO MILE")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        metertocm = meter * 100;
                      });
                    },
                    child: Text("GET METER TO CM")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cltofnhit = (celsius * 95) + 32;
                      });
                    },
                    child: Text("GET CEL TO F*")),
                SizedBox(
                  height: 110,
                ),
                Text(
                  "KM TO Mile($km) :$kmtomil",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "METER TO CM($meter) : $metertocm",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "CELSIUS TO FRENHIT($celsius) :$cltofnhit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      km = 0;
                      meter = 0;
                      celsius = 0;
                      kmtomil = 0;
                      metertocm = 0;
                      cltofnhit = 0;

                      kmController.clear();
                      meterController.clear();
                      ClController.clear();
                    });
                  },
                  child: Text("CLEAR ALL"),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
