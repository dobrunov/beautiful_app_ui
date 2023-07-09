import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:run_app_ui/models/user_model.dart';

import '../config.dart';

class RemoteService {
  //
  final userUrl = Uri.parse(Config.userBaseUri);

  Future<User> getUser() async {
    try {
      final response = await get(userUrl);
      if (response.statusCode == 200) {
        return userFromJson(response.body);
      } else {
        throw Exception('Failed to fetch user: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Oops: $e');
    }
  }
}

User userFromJson(String str) => User.fromJson(json.decode(str));
