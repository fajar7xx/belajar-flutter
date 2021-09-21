import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(BelajarSharedPreferences());

class BelajarSharedPreferences extends StatefulWidget {
  // const BelajarSharedPreferences({ Key? key }) : super(key: key);

  @override
  _BelajarSharedPreferencesState createState() =>
      _BelajarSharedPreferencesState();
}

class _BelajarSharedPreferencesState extends State<BelajarSharedPreferences> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isOn = false;

  //buat method untuk save
  void saveData() async {
    //ambil object dari shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //save yang ada di textfield dan bool
    prefs.setString('nama', controller.text);
    prefs.setBool('ison', isOn);
  }

  //boat laod data berdasarkan type datanya
  Future<String> getnama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // ambil data dari shared preferences berdasarkan key string
    return prefs.getString('nama') ?? "No Name";
  }

  Future<bool> getOn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("belajar shared preferences"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isOn,
                  onChanged: (newValue) {
                    setState(() {
                      isOn = newValue;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: Text("Simpan")),
              ElevatedButton(
                  onPressed: () {
                    getnama().then((string) {
                      controller.text = string;
                      setState(() {});
                    });
                    getOn().then((b) {
                      isOn = b;
                      setState(() {});
                    });
                  },
                  child: Text("Load"))
            ],
          ),
        ),
      ),
    );
  }
}
