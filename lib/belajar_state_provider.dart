import 'package:aplikasi_hello_world/provider/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(BelajarStateProvider());

//karena menggunakan provider padda page ini
// maka kita tidak memerlukan stateful widget

class BelajarStateProvider extends StatelessWidget {
  // const BelajarStateProvider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        builder: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                  "Belajar Provider State Management",
                  style: TextStyle(color: applicationColor.color)),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<ApplicationColor>(
                  builder: (context, ApplicationColor, _) => AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 100,
                      height: 100,
                      color: ApplicationColor.color,
                      margin: EdgeInsets.all(5)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text("AB")),
                    Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Switch(
                            value: applicationColor.isLightBlue,
                            onChanged: (newValue) {
                              applicationColor.isLightBlue = newValue;
                            })),
                    Container(margin: EdgeInsets.all(5), child: Text("LB"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
