
import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Models/UserModel.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '',
    name: '',
    username: '',
    email: '',
    password: '',
    token: '',
  );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}