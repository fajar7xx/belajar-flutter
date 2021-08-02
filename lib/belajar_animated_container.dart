import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BelajarAnimatedContainer());

class BelajarAnimatedContainer extends StatefulWidget {
  // const BelajarAnimatedContainer({Key? key}) : super(key: key);

  @override
  _BelajarAnimatedContainerState createState() =>
      _BelajarAnimatedContainerState();
}

class _BelajarAnimatedContainerState extends State<BelajarAnimatedContainer> {
  // buat objek random
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Belajar Anmated Container"),
            ),
            body: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: AnimatedContainer(
                    color: Color.fromARGB(255, random.nextInt(256),
                        random.nextInt(256), random.nextInt(256)),
                    duration: Duration(seconds: 1),
                    width: 50.0 + random.nextInt(151),
                    height: 50.0 + random.nextInt(151)),
              ),
            )));
  }
}
