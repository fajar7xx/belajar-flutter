import 'package:flutter/material.dart';

void main() => runApp(BelajarOpacityGradasi());

class BelajarOpacityGradasi extends StatelessWidget {
  // const BelajarOpacityGradasi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Gradient Opacity"),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
                    Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            width: 300,
            image: NetworkImage(
                "https://images.pexels.com/photos/1335115/pexels-photo-1335115.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
          ),
        ),
      ),
    ));
  }
}
