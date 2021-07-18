import 'package:flutter/material.dart';

void main() => runApp(BelajarTextStyle());

class BelajarTextStyle extends StatelessWidget {
  const BelajarTextStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan test style"),
            ),
            body: Center(
                child: Text("Ini adalah text",
                    style: TextStyle(
                        fontFamily: "Grettana",
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        decoration: TextDecoration.overline,
                        decorationColor: Colors.red,
                        decorationThickness: 5,
                        decorationStyle: TextDecorationStyle.wavy)))));
  }
}
