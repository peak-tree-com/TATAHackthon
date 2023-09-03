import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';

class CustomTextPopBold extends StatelessWidget {
  final String text;
  final double fontSize;
  const CustomTextPopBold({super.key, required this.text,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontFamily: FontFamily().popBold,fontSize: fontSize),
    );
  }
}