import 'package:flutter/material.dart';

void main() => runApp(BelajarListView());

class BelajarListView extends StatefulWidget {
  const BelajarListView({Key? key}) : super(key: key);

  @override
  _BelajarListViewState createState() => _BelajarListViewState();
}

class _BelajarListViewState extends State<BelajarListView> {
  // list baru dan new widget
  List<Widget> widgets = [];
  int counter = 1;

  // buat constructor dahulu
  // _BelajarListViewState() {
  //   // widgets.add(Text("Data 1"));
  //   // widgets.add(Text("Data 2"));
  //   // widgets.add(Text("Data 3"));

  //   // bagusan kita ulangi dengna for
  //   for (int i = 0; i < 40; i++) {
  //     widgets.add(Text(
  //       "Data ke-" + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Belajar ListView"),
            ),
            // body: Column(
            //   children: <Widget>[
            //     Text("Data ke 1"),
            //     Text("Data ke 2"),
            //   ], //maskdunya meminta list of widget
            // )
            // body: Column(
            //   children: widgets,
            // )
            // cukup ganti jadi listview
            body: ListView(
              // children: widgets,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Tambah Data"),
                      onPressed: () {
                        setState(() {
                          widgets.add(Text(
                            "Data ke-" + counter.toString(),
                            style: TextStyle(fontSize: 40),
                          )); //tambah data pada list
                          counter++;
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text("Hapus Data"),
                      onPressed: () {
                        setState(() {
                          widgets.removeLast(); //hapus data pada list
                          counter--;
                        });
                      },
                    )
                  ],
                ), //memasang 2 btn ke samping
                Column(
                  // atur arah horizontal
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                )
              ],
            )));
  }
}
