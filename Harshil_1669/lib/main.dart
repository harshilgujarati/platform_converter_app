import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiplicationTableApp(),
  );
}

class MultiplicationTableApp extends StatefulWidget {
  @override
  _MultiplicationTableAppState createState() => _MultiplicationTableAppState();
}

class _MultiplicationTableAppState extends State<MultiplicationTableApp> {
  int firstNumber = 0;
  int secondNumber = 0;
  List<String> table = [];

  void generateTable() {
    setState(() {
      table = [];
      for (int i = 1; i <= 10; i++) {
        table.add('$firstNumber x $i = ${firstNumber * i}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Multiplication Table',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                cursorWidth: 2,
                onChanged: (value) {
                  setState(() {
                    firstNumber = int.parse(value);
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter first number...',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    secondNumber = int.parse(value);
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter second number...',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 28),
              ElevatedButton(
                child: Text(
                  'Get Your Answer...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                onPressed: () {
                  if (firstNumber >= secondNumber) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('You have onr error'),
                          content:
                              Text('First Number is Samll than Secand Number.'),
                          actions: [
                            ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Done'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    generateTable();
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: table.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(table[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
