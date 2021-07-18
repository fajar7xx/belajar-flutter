import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// membuat class MyApp

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // widget yang memerlukan material design
    return MaterialApp(
      // properti home
      home: Scaffold(
        // judul
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(
            child: Container(
          color: Colors.lightBlue,
          width: 150,
          height: 50,
          child: Text(
            "Saya sedang melatih kemampuan saya dalam membuat aplikasi Flutter saya.",
            maxLines: 2,
          ),
        )),
      ), //pasang widget scaffold tampilan dasar
    );
  }
}
