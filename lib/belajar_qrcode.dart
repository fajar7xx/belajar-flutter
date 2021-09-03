import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(BelajarQrcode());

class BelajarQrcode extends StatelessWidget {
  // const BelajarQrcode({ Key? key }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: QrImage(
            version: 6,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(0),
            size: 300,
            data: "www.ingco.co.id"),
      )),
    );
  }
}
