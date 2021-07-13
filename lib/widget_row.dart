import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// membuat class MyApp

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Row dan Column"),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Text 1"),
                  Text("Text 2"),
                  Text("Text 3"),
                  // susun widget secara horizontal
                  Row(
                    children: <Widget>[
                      Text("Text 4"),
                      Text("Text 5"),
                      Text("Text 6")
                    ],
                  )
                ])));
  }
}
