import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const route ='/MessageScreen';
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Message screen'),
      ),
    );
  }
}