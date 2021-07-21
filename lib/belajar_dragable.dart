import 'package:flutter/material.dart';

void main() => runApp(BelajarDragable());

class BelajarDragable extends StatefulWidget {
  const BelajarDragable({Key? key}) : super(key: key);

  @override
  _BelajarDragableState createState() => _BelajarDragableState();
}

class _BelajarDragableState extends State<BelajarDragable> {
// variable
  Color color1 = Colors.redAccent;
  Color color2 = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Belajar Dragable"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Draggable<Color>(
                      // drabbable<tipedata>
                      data: color1,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1,
                          shape:
                              StadiumBorder(), //membuat border sekeliling nya
                          elevation: 3, //efek shadow
                        ),
                      ),
                      childWhenDragging: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape:
                              StadiumBorder(), //membuat border sekeliling nya
                          elevation: 0, //efek shadow
                        ),
                      ),
                      feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1.withOpacity(0.7),
                          shape:
                              StadiumBorder(), //membuat border sekeliling nya
                          elevation: 3, //efek shadow
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
