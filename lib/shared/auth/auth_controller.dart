import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      saveUSer(user);
      _user = user;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  void saveUSer(UserModel user) async {
    final instace = await SharedPreferences.getInstance();
    await instace.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instace = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    if (instace.containsKey("user")) {
      final json = instace.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
