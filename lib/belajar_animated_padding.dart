import 'package:flutter/material.dart';

void main() => runApp(BelajarAnimatedPadding());

class BelajarAnimatedPadding extends StatefulWidget {
  // const BelajarAnimatedPadding({ Key? key }) : super(key: key);

  @override
  _BelajarAnimatedPaddingState createState() => _BelajarAnimatedPaddingState();
}

class _BelajarAnimatedPaddingState extends State<BelajarAnimatedPadding> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Animated Padding")),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              myPadding = 20;
                            });
                          },
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
