import 'package:flutter/material.dart';

void main() => runApp(BelajarTextField());

class BelajarTextField extends StatefulWidget {
  // const BelajarTextField({Key? key}) : super(key: key);

  @override
  _BelajarTextFieldState createState() => _BelajarTextFieldState();
}

class _BelajarTextFieldState extends State<BelajarTextField> {
  // controller untuk textfield
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Text Field"),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  // obscureText: true, //inputan untuk password
                  // maxLength: 5, //panjang karakter
                  // maxLines: 2, //maximal brapa baris
                  decoration: InputDecoration(
                      fillColor: Colors.lightBlue[50],
                      filled: true,
                      icon: Icon(Icons.adb), //icon di luar
                      prefix: Container(
                        width: 5,
                        height: 5,
                        color: Colors.blue,
                      ),
                      // kalau pasang prefix gak boleh ada prefix di bawah ini
                      // prefixText: "Name: ", //untuk placeholder
                      // prefixStyle: TextStyle(
                      //     color: Colors.blue, fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.person), //icon di dalam border
                      labelText: "Nama Lengkap",
                      labelStyle: TextStyle(color: Colors.black54),
                      hintText: "Nama Lengkap sesuai KTP/Identitas",
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
                Text(controller.text)
              ],
            ),
          )),
    );
  }
}
