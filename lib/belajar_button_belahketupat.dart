import 'package:flutter/material.dart';
import 'widgets/colorful_button.dart';

void main() => runApp(BelajarButtonBelahKetupat());

class BelajarButtonBelahKetupat extends StatelessWidget {
  // const BelajarButtonBelahKetupat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Colorful Buttons")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
            ColorfulButton(Colors.amber, Colors.red, Icons.comment),
            ColorfulButton(Colors.green, Colors.purple, Icons.computer),
            ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone)
          ],
        ),
      ),
    ));
  }
}
