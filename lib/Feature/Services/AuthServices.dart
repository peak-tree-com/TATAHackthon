// ignore_for_file: use_build_context_synchronously, empty_catches

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tatahackathon/Feature/Models/UserModel.dart';
import 'package:http/http.dart' as http;
import 'package:tatahackathon/Feature/Widget/Error/CustomErrorDisplay.dart';
import 'package:tatahackathon/Feature/Widget/Error/ErrorHandling.dart';
import 'package:tatahackathon/Provider/UserProvider.dart';
import 'package:tatahackathon/util.dart';
class AuthServices{

  void signUpuser(
    {
      required BuildContext context,
      required String name,
      required String username,
      required String email,
      required String password,
    }
  )async{
    try{
      User user = User(
        id: '', 
        name: name, 
        username: username, 
        email: email, 
        password: password, 
        token: ''
        );

        http.Response res = await http.post(
          Uri.parse('$url/Peak-tree/UserSignUp'),
          body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        );
        print(res.body);
        httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
            'Account created! Login with the same credentials!',
          );
        },
      );
    }
    catch(error){
      showErrorSnackBar(context, error.toString());
    }
  }

  void signInuser(
    {
      required BuildContext context,
      required String email,
      required String password,
    }
  )async{
    try{

        http.Response res = await http.post(
          Uri.parse('$url/Peak-tree/UserSignIn'),
          body: jsonEncode(
            {
              'email':email,
              'password':password
            }
          ),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        );
        print(res.body);
        httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          Navigator.pushNamedAndRemoveUntil(
            context,
            'BottomBar.routeName',
            (route) => false,
          );
        },
      );
    }
    catch(error){
      showErrorSnackBar(context, error.toString());
    }
  }

  void getUserData(
    BuildContext context,
  ) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');

      if (token == null) {
        prefs.setString('x-auth-token', '');
      }

      var tokenRes = await http.post(
        Uri.parse('$url/tokenIsValid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': token!
        },
      );

      var response = jsonDecode(tokenRes.body);

      if (response == true) {
        http.Response userRes = await http.get(
          Uri.parse('$url/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token
          },
        );

        var userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setUser(userRes.body);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}