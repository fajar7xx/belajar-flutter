import 'package:aplikasi_hello_world/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BelajarMediaQuery());

class BelajarMediaQuery extends StatelessWidget {
  // const BelajarMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Belajar Media Query pada Flutter")),
      // body: Container(
      //   color: Colors.redAccent,
      //   width: MediaQuery.of(context).size.width / 3, // spertiga dari layar
      //   height: MediaQuery.of(context).size.height / 2, //setengah dari layar
      // ));

      //untuk mengecek jika portrait maka column
      // kalau landscape maka row
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.redAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.greenAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blueAccent,
        width: 100,
        height: 100,
      ),
    ];
  }
}
