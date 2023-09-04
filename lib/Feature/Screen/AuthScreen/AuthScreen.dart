import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Login.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Signup.dart';

class AuthScreen extends StatefulWidget {
  static const route ='/AuthScreen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const [
          LoginScreen(),
          SignUpScreen()
        ],
      ),
    );
  }
}