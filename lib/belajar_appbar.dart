import 'package:flutter/material.dart';

void main() => runApp(BelajarAppbar());

class BelajarAppbar extends StatelessWidget {
  const BelajarAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
      leading: Icon(
        Icons.adb,
        color: Colors.white,
      ),
      title: Text(
        "Contoh Appbar",
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
            image: DecorationImage(
                image: AssetImage("assets/pattern/pattern.png"),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat)),
      ),
    )));
  }
}
