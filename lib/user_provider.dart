import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'models/user_model.dart';

class UserDataProvider with ChangeNotifier {
  //
  Future<User> getUserData() async {
    final response = await http.get(Uri.parse('http://localhost:7000/'));
    if (response.statusCode == 200) {
      final userDataMap = json.decode(response.body);
      return User.fromJson(userDataMap);
    } else {
      throw Exception('Failed to load user data');
    }
  }
  //
}
