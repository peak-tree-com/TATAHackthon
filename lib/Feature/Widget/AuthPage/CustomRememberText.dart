import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';
import 'package:tatahackathon/util.dart';

class CustomRememberText extends StatelessWidget {
  const CustomRememberText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 10),
            child: CustomTextPopReg(
              text: 'Remeber', 
              fontSize: 14, 
              color: blackWithOpacity,
            ),
          );
  }
}