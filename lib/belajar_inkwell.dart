import 'package:flutter/material.dart';

void main() => runApp(BelajarInkwell());

class BelajarInkwell extends StatelessWidget {
  // const BelajarInkwell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Belajar inkwell"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.amber,
                    child: Text("Raised Button"),
                    shape: StadiumBorder(),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2,
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Colors.purple, Colors.pink],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent, //warna transparant
                        child: InkWell(
                          splashColor: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "My Button",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
