import 'package:flutter/material.dart';
import 'package:tatahackathon/util.dart';

class HomeScreen extends StatelessWidget {
  static const route ='/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}