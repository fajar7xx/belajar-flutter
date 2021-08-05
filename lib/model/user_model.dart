import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String name;

  // buat constructornya
  User({this.id, this.name});

  // buat factory method
  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }

  // async
  static Future<User> connectToAPI(String id) async {
    var apiUrl = Uri.parse("https://reqres.in/api/users/" + id);
    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);

    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
