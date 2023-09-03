import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';

class CustomTextPopReg extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const CustomTextPopReg({
    super.key, 
    required this.text, 
    required this.fontSize, 
    required this.color
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontFamily: FontFamily().popMEd,fontSize: fontSize),
    );
  }
}
