import 'dart:convert';

import 'package:http/http.dart';

class UserService {
  final endpoint = "https://randomuser.me/api/";

  Future<Map<String, dynamic>> getData() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      print(body["results"][0]);
      Map<String, dynamic> data = body["results"][0];
      return data;
    } else {
      throw Exception(response.statusCode);
    }
  }
}
