import 'package:flutter/material.dart';

void main() => runApp(BelajarStackAlign());

class BelajarStackAlign extends StatelessWidget {
  // const BelajarStackAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Belajar Stack dan Align"),
          ),
          body: Stack(
            children: <Widget>[
              // background
              Column(children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(children: <Widget>[
                    Flexible(flex: 1, child: Container(color: Colors.white)),
                    Flexible(flex: 1, child: Container(color: Colors.black12))
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: <Widget>[
                    Flexible(flex: 1, child: Container(color: Colors.blue)),
                    Flexible(flex: 1, child: Container(color: Colors.lightBlue))
                  ]),
                ),
              ]),
              // listview
              ListView(children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "1Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "2Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "3Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "4Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "5Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "6Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "6Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "6Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "6Ini adalah text yang ada di laposan tengah dari stack.",
                          style: TextStyle(fontSize: 30)),
                    ),
                  ],
                )
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                    onPressed: () {},
                    child: Text("My Button"),
                    color: Colors.lightGreenAccent),
              )
              // button
            ],
          )),
    );
  }
}
