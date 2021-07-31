import 'package:flutter/material.dart';

void main() => runApp(BelajarPostApi());

class BelajarPostApi extends StatefulWidget {
  const BelajarPostApi({Key? key}) : super(key: key);

  @override
  _BelajarPostApiState createState() => _BelajarPostApiState();
}

class _BelajarPostApiState extends State<BelajarPostApi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Api Demi")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Hasil Kembalian"),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("POST"),
                  )
                ],
              ),
            )));
  }
}
