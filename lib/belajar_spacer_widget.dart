import 'package:flutter/material.dart';

void main() => runApp(BelajarSpacerWidget());

class BelajarSpacerWidget extends StatelessWidget {
  // const BelajarSpacerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("belajar spacer widget"),
            ),
            body: Center(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            )));
  }
}
