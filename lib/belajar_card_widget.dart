import 'package:flutter/material.dart';

void main() => runApp(BelajarCardWidget());

class BelajarCardWidget extends StatelessWidget {
  // const BelajarCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.green,
            body: Container(
              margin: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  buildCard(Icons.account_box, "Account Box"),
                  buildCard(Icons.adb, "Android Test")
                ],
              ),
            )));
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      // elevation => jarak objek daengan bg
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              child: Icon(iconData, color: Colors.green)),
          Text(text)
        ],
      ),
    );
  }
}
