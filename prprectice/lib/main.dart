//Print A Table
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   double n = 2.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Program",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               Slider(
//                 activeColor: Colors.black,
//                 inactiveColor: Colors.grey,
//                 min: 1.0,
//                 max: 100.0,
//                 divisions: 100,
//                 value: n,
//                 onChanged: (val) {
//                   setState(() {
//                     n = val;
//                   });
//                 },
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               for (int i = 1; i <= 10; i++)
//                 Text("${n.toInt()} * $i = ${n.toInt() * i}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:prprectice/screens/screens/Grid.dart';
import 'package:prprectice/screens/screens/fourth_page.dart';
import 'package:prprectice/screens/screens/third_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        'Third_page': (context) => MyApp(),
        'Home Page': (context) => Four_Page(),
        '/': (context) => fouth_page(),
        'grid': (context) => Grid(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double n = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Program",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Slider(
                activeColor: Colors.black,
                inactiveColor: Colors.grey,
                min: 1,
                max: 100,
                divisions: 100,
                value: n,
                onChanged: (val) {
                  setState(() {
                    n = val;
                  });
                },
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  for (int j = 1; n <= j; j++)
                    Text(
                      "$n",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
