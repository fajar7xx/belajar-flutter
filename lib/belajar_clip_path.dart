import 'package:flutter/material.dart';

void main() => runApp(BelajarClipPath());

class BelajarClipPath extends StatelessWidget {
  // const BelajarClipPath({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Custom Clipper")),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Image(
            width: 300,
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2018/10/28/16/11/volcano-3779159_960_720.jpg"),
          ),
        ),
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    //buat melengkung
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    //tutup path nya
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
