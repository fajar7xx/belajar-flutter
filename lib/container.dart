// import 'package:aplikasi_hello_world/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(ContainerApp());

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Container"),
            ),
            body: Container(
              color: Colors.red,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Container(
                // color: Colors.blueAccent,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Colors.amber,
                          Colors.blueAccent,
                          Colors.greenAccent
                        ])),
              ),
            )));
  }
}
