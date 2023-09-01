import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';

class CustomTextPopReg extends StatelessWidget {
  final String text;
  const CustomTextPopReg({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontFamily: fontFamily().popMEd),
    );
  }
}
