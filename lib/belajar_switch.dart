import 'package:flutter/material.dart';

void main() => runApp(BelajarSwitch());

class BelajarSwitch extends StatefulWidget {
  // const BelajarSwitch({ Key? key }) : super(key: key);

  @override
  _BelajarSwitchState createState() => _BelajarSwitchState();
}

class _BelajarSwitchState extends State<BelajarSwitch> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("belajar animated switch"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
              Switch(
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.red[200],
                  value: isON,
                  onChanged: (newValue) {
                    isON = newValue;
                    setState(() {
                      if (isON)
                        myWidget = Container(
                          key: ValueKey(
                              1), //digunakan jika menggunakan animated rotation
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      // myWidget = SizedBox(
                      //   width: 200,
                      //   height: 100,
                      //   child: Center(
                      //     child: Text("Switch: ON",
                      //         style: TextStyle(
                      //             color: Colors.green,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 20)),
                      //   ),
                      // );
                      else
                        myWidget = Container(
                          key: ValueKey(
                              2), //digunakan jika menggunakan animated rotation
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
