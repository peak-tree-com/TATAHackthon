import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';

class SignUpScreen extends StatefulWidget {
  static const route = '/SignUpScreen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Additional signup =Additional();

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return const Scaffold(
      // body: Stack(
      //   children: [
      //     Container(
      //       height: height*1,
      //       width: width*1,
      //       color: themeColor,
      //       child: Padding(
      //         padding: const EdgeInsets.only(top:60.0,left: 22),
      //         child: CustomTextPopBold(text: signup.signInText,fontSize: 30,),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(top:200.0),
      //       child: Container(
      //         height: height*1,
      //         width: width*1,
      //         decoration: const BoxDecoration(
      //         color: Colors.white,
      //           borderRadius: BorderRadius.only(
      //             topRight: Radius.circular(25),
      //             topLeft: Radius.circular(25),
      //           )
      //         ),
      //       ),
      //     )
      //   ],
      // )
    );
  }
}