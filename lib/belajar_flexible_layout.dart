import 'package:flutter/material.dart';

void main() => runApp(BelajarFlexibleWidget());

class BelajarFlexibleWidget extends StatelessWidget {
  const BelajarFlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Belajar Flexible Layout"),
            ),
            body: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5), color: Colors.purple)),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.purpleAccent)),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.deepPurple)),
                  ]),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.amberAccent,
                      margin: EdgeInsets.all(5),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(5),
                    ))
              ],
            )));
  }
}
