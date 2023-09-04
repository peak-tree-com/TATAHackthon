import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';
import 'package:tatahackathon/util.dart';

class CustomElevatedChoiceButton extends StatelessWidget {
  final void Function() onPressed;
  final String image;
  final String text;
  const CustomElevatedChoiceButton({
    super.key,
    required this.onPressed,
    required this.image,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          shadowColor: blackWithOpacity,
          elevation: 25,
          minimumSize: const Size(160, 50)
        ),
        onPressed:onPressed,
        child:Row(
          children: [
            Image.asset(image,height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: CustomTextPopReg(
                text: text, 
                fontSize: 13.5, 
                color: blackWithOpacity
                ),
            )
          ],
        ),
      ),
    );
  }
}