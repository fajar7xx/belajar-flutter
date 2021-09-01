import 'package:flutter/material.dart';

void main() => runApp(BelajarCustomAppbar());

class BelajarCustomAppbar extends StatelessWidget {
  // const BelajarCusatomAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // hilangkan debug
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
          // membuat tinggi si appbar
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text("Appbar with custom height",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
        )));
  }
}
