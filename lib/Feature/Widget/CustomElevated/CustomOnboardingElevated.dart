import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class CustomOnboardingElevated extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const CustomOnboardingElevated(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(260, 45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: themeColor, fontFamily: FontFamily().popMEd,fontSize: 16.5),
        ));
  }
}
