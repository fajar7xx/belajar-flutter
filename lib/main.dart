import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// membuat class MyApp

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // widget yang memerlukan material design
    return MaterialApp(
      // properti home
      home: Scaffold(
        // judul
        appBar: AppBar(
          title: Text("Aplikasi"),
        ),
        body: Center(
            child: Container(
          color: Colors.lightBlue,
          width: 150,
          height: 100,
          child: Text(
            "aplikasi yang dibangun menggunakan flutter sebagai percobaan pertama",
            // maxLines:
            //     2, //max line hanya 2 baris jika panjang 3 baris maka akan terpotong tergantung width dan height
            // overflow: TextOverflow
            //     .ellipsis, //elipsis itu memberikan tanda titik2 kalau terporong
            // softWrap: false,
            // textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        )),
      ), //pasang widget scaffold tampilan dasar
    );
  }
}
