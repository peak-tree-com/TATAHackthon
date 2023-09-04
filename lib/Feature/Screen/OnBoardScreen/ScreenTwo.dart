import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Additional texts = Additional();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                texts.screenTwoText1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: FontFamily().popMEd,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                texts.screenTwoText2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: FontFamily().popReg,
                  color: Colors.white.withOpacity(0.95),
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: height * 0.4,
                width: width * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/ai2.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
