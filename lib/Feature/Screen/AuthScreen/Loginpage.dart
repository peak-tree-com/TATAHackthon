import 'package:flutter/material.dart';
import 'package:tatahackathon/util.dart';

class LoginPage extends StatelessWidget {
  static const route = '/LoginPage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          themeColor,
          themeColor,
          themeColor,
          themeColorWithOpacity,
          //Colors.lightBlueAccent
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
    );
  }
}
