import 'package:aplikasi_hello_world/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BelajarMultiPage());

class BelajarMultiPage extends StatelessWidget {
  // const BelajarMultiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
