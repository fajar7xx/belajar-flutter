import 'package:aplikasi_hello_world/model/post_result_model.dart';
import 'package:flutter/material.dart';

import 'model/user_model.dart';

void main() => runApp(BelajarPostApi());

class BelajarPostApi extends StatefulWidget {
  // const BelajarPostApi({Key? key}) : super(key: key);

  @override
  _BelajarPostApiState createState() => _BelajarPostApiState();
}

class _BelajarPostApiState extends State<BelajarPostApi> {
  // buuton style untuk elevateedbutton migrasi dari RaisedButton
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  PostResult postResult;
  User user;
  String output = "no data";

  // pasti masih error

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Api Demo")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(output),
                  // Text("Hasil Kembalian"),
                  // Text((postResult != null)
                  //     ? postResult.id +
                  //         "|" +
                  //         postResult.name +
                  //         "|" +
                  //         postResult.job +
                  //         "|" +
                  //         postResult.created
                  //     : "tidak ada data"),

                  Text((user != null)
                      ? user.id + "|" + user.name
                      : "tidak ada data"),
                  // RaisedButton(
                  //   onPressed: () {},
                  //   child: Text("POST"),
                  // )
                  ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () {
                        // PostResult.connectToAPI("fajar", "Guru").then((value) {
                        //   postResult = value;
                        //   setState(() {});
                        // });

                        //get spesifik data
                        // User.connectToAPI("7").then((value) {
                        //   user = value;
                        //   setState(() {});
                        // });

                        User.getUsers("2").then((users) {
                          output = "";
                          for (int i = 0; i < users.length; i++)
                            output = output + "[ " + users[i].name + " ]";
                          setState(() {});
                        });
                      },
                      // child: Text("post"))
                      child: Text("Get"))
                ],
              ),
            )));
  }
}
