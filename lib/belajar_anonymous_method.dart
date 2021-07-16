import 'package:flutter/material.dart';

void main() => runApp(MyAnomMethod());

class MyAnomMethod extends StatefulWidget {
  const MyAnomMethod({Key? key}) : super(key: key);

  @override
  _MyAnomMethodState createState() => _MyAnomMethodState();
}

class _MyAnomMethodState extends State<MyAnomMethod> {
  String message = "Ini adalah hello world";

  // method
  // void tombolDitekan() {
  //   // setstate agar tampilan diupdate
  //   setState(() {
  //     message = "Tombol sudah ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Belajar Anonymous Method")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(message),
                  RaisedButton(
                    child: Text("Tekan saya"),
                    // onPressed: tombolDitekan,
                    //diubah menjadi anonymous function\
                    onPressed: () {
                      setState(() {
                        message =
                            "Tombol Sudah di tekan melalui anonymous function";
                      });
                    },
                  )
                ],
              ),
            )));
  }
}
