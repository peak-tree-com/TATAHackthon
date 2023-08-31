import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                texts.screenOneText1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'pop med',
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Text(
              texts.screenOneText2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'pop reg',
                color: Colors.white.withOpacity(0.95),
                fontSize: 16,
              ),
            ),
            Container(
              height: height * 0.4,
              width: width * 1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/ai1.png'))),
            )
          ],
        ),
      ),
    );
  }
}
