import 'dart:convert';

import 'package:piapp/model.dart';
import 'package:http/http.dart' as http;

class ApiHandler {
  final String baseUri =
      "https://4861-2409-4073-4d86-68df-6cd4-2174-c52e-1aee.ngrok-free.app/api/Users";

  Future<List<Users>> getUserData() async {
    List<Users> data = [];

    final uri = Uri.parse(baseUri);
    try {
      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final List<dynamic> jsonData = json.decode(response.body);
        data = jsonData.map((json) => Users.fromJson(json)).toList();
      }
    } catch (e) {
      return data;
    }
    return data;
  }

  // Future<http.Response> updateUser(
  //     {required int userId, required Users user}) async {
  //   final uri = Uri.parse("$baseUri/$id");
  //   late http.Response response;

  //   try {
  //     response = await http.put(
  //       uri,
  //       headers: <String, String>{
  //         'Content-type': 'application/json; charset=UTF-8',
  //       },
  //       body: json.encode(user),
  //     );
  //   } catch (e) {
  //     return response;
  //   }

  //   return response;
  // }
}
