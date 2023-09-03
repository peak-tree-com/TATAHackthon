import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class ScreenThree extends StatefulWidget {
  static const route = '/ScreenThree';
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Additional auth = Additional();

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
        child: Stack(children: [
          // Align(
          //   alignment: const Alignment(0, 0.945),
          //   child: CustomTextPopReg(
          //     text: auth.login,
          //   ),
          // )
        ]),
      ),
    );
  }
}
