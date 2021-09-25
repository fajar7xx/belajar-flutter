import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isLightBlue = true; //private di dart

  // buat getter setter
  bool get isLightBlue => _isLightBlue;
  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners(); //perintah yang berfungsi memberi perintah pada widget2 yang menunggu
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
