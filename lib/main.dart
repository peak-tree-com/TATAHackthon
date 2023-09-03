import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/OnBoardScreen.dart';
import 'package:tatahackathon/route.dart';

void main() async{
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      onGenerateRoute: (settings) => onGenrate(settings),
    );
  }
}
