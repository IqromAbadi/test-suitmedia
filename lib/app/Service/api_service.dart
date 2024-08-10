import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:suitmedia/app/models/user_model.dart';

class ApiService {
  final String baseUrl = "https://reqres.in/api";

  Future<List<UserModel>?> getUsers() async {
    try {
      var response = await http.get(Uri.parse('$baseUrl/users?page=2'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<UserModel> users = [];
        data['data'].forEach((user) {
          users.add(UserModel.fromJson(user));
        });
        return users;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
