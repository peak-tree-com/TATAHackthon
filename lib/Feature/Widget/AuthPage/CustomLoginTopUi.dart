import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopBold.dart';
import 'package:tatahackathon/util.dart';

class CustomLoginTopUI extends StatelessWidget {
  const CustomLoginTopUI({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return 
          Container(
            height: height*1,
            width: width*1,
            color: themeColor,
            child: Padding(
              padding: const EdgeInsets.only(top:60.0,left: 22),
              child: CustomTextPopBold(text: Additional().signInText,fontSize: 30,),
            ),
          );
  }
}