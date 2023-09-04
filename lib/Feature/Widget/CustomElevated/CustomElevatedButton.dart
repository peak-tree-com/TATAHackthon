import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';
import 'package:tatahackathon/util.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 15,
            backgroundColor: homeColor,
            minimumSize: const Size(320, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30))),
          onPressed: onPressed,
          child: CustomTextPopReg(text: text, fontSize: 15.5, color: Colors.white)
        ),
    );
  }
}
