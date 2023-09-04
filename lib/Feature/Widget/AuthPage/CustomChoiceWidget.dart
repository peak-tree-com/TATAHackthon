import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/CustomElevatedChoiceButton.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';
import 'package:tatahackathon/util.dart';

class CustomChoiceWidget extends StatelessWidget {
  final void Function() googleOnpressed;
  final void Function() guestOnpressed;
  const CustomChoiceWidget({
    super.key,
    required this.googleOnpressed,
    required this.guestOnpressed
    });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
            height: height*0.1755,
            width:width*1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 0.5,
                        width: width*0.405,
                        color: blackWithOpacity,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:5.0,left: 8,right: 5),
                        child: CustomTextPopReg(
                          text: 'or', 
                          fontSize: 17, 
                          color: blackWithOpacity
                        ),
                      ),
                      Container(
                        height: 0.5,
                        width: width*0.405,
                        color: blackWithOpacity,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:15.0),
                  child: SizedBox(
                    child: Row(
                      children: [
                        CustomElevatedChoiceButton(onPressed: googleOnpressed, image: 'assets/icon/google.png', text: 'Google'),
                        CustomElevatedChoiceButton(onPressed: guestOnpressed, image: 'assets/icon/guest.png', text: 'Guest'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}