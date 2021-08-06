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

  // mengembalikan list of user
  static Future<List<User>> getUsers(String page) async {
    var apiUrl = Uri.parse("https://reqres.in/api/users?page=" + page);
    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);

    // hasil data berpa map
    //ambil map dari data - list

    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)[
        'data']; //dicasting dari map string data ke dinamic ambil nilai dari data

    // buat data kosong
    List<User> users = [];
    for (int i = 0; i < listUser.length; i++)
      users.add(User.createUser(listUser[i]));

    return users;
  }
}
