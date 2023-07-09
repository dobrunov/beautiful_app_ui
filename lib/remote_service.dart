import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:run_app_ui/user_model.dart';

import '../config.dart';

class RemoteService {
  //
  final userUrl = Uri.parse(Config.userBaseUri);

  Future<User?> getUser() async {
    try {
      final response = await get(userUrl);
      if (response.statusCode == 200) {
        return userFromJson(response.body);
      } else {
        const CircularProgressIndicator(
          backgroundColor: Colors.red,
        );
      }
    } catch (e) {
      throw Exception('Oops: $e');
    }
    return null;
  }
}

User userFromJson(String str) => User.fromJson(json.decode(str));
