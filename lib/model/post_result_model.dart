import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  // tampilkan data sesuai JSON yang di ambil di sini
  // nama juga tidah mesti sama
  String id;
  String name;
  String job;
  String created; // asalnya createdAt

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  // menghubhungkan ke api
  static Future<PostResult> connectToAPI(String name, String job) async {
    var apiURL = Uri.parse("https://reqres.in/api/users");
    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
