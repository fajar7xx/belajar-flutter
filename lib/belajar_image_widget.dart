import 'package:flutter/material.dart';

void main() => runApp(BelajarImageWidget());

class BelajarImageWidget extends StatelessWidget {
  // const BelajarImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Belajar Image Widget"),
          ),
          body: Center(
              child: Container(
            color: Colors.black87,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            // ambil dari network atau api
            // child: Image(
            //   image: NetworkImage(
            //       "https://cdn.pixabay.com/photo/2016/12/25/22/08/christmas-1931054_960_720.jpg"),
            //   fit: BoxFit
            //       .contain, //menampilkan gambar sesuai proporsi/responsive terhadap container
            //   // repeat: ImageRepeat.repeat,
            // ), //ambil dari internet
            //ambil dari asset
            child: Image(
              image: AssetImage("assets/boy.jpg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.noRepeat,
            ),
          ))),
    );
  }
}
