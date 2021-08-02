import 'package:flutter/material.dart';

// menjalankan class yang ada my runapp
void main() => runApp(BelajarStatefullWidget());

// buat statefullwidget
class BelajarStatefullWidget extends StatefulWidget {
  // const BelajarStatefullWidget({Key? key}) : super(key: key);

  @override
  _BelajarStatefullWidgetState createState() => _BelajarStatefullWidgetState();
}

class _BelajarStatefullWidgetState extends State<BelajarStatefullWidget> {
  // buat satu buat field
  int number = 0;

  // method void tidak mengembalikan apa apa
  void tekanTombol() {
    // agar nilai nya berubah harus merefresh tampilan dengan set state
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Belajar Stateful Widget"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    number.toString(),
                    style: TextStyle(fontSize: 10 + number.toDouble()),
                  ), //karena int dan yang di tampilkan string maka ubah ke string terlebih dahulu
                  RaisedButton(
                    child: Text("Tambah bilangan"),
                    onPressed:
                        tekanTombol, //ketika di tekan akan menjalankan methood
                  )
                ],
              ),
            )));
  }
}
