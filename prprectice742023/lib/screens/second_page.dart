// import 'package:flutter/material.dart';
//
// class Four_Page extends StatefulWidget {
//   const Four_Page({Key? key}) : super(key: key);
//
//   @override
//   State<Four_Page> createState() => _Four_PageState();
// }
//
// class _Four_PageState extends State<Four_Page> {
//   late int i;
//   late int j;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Patten",
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.red,
//           ),
//         ),
//         backgroundColor: Colors.tealAccent,
//         elevation: 0,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               for(i=1; i<=5; i++)
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 80,
//                     ),
//                     for(j=1; j<=i; j++)
//                       Text("$j",style: TextStyle(
//                         fontSize: 20,
//                       ),),
//                   ],
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double n = 1, m = 2;

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
                height: 10,
              ),
              Slider(
                activeColor: Colors.black,
                inactiveColor: Colors.grey,
                min: 1,
                max: 100,
                divisions: 100,
                value: m,
                onChanged: (val) {
                  setState(() {
                    m = val;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              for (double i = n; i <= m; i++)
                for (int j = 1; j <= 10; j++)
                  Text("${i.toInt()} * $j = ${(i.toInt()) * j}"),
            ],
          ),
        ),
      ),
    );
  }
}