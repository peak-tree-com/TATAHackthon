import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/CustomTopUi.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/LogintoSignup.dart';
import 'package:tatahackathon/Feature/Widget/CustomElevated/CustomElevatedButton.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomNameTextField.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomPasswordTextField.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomTextField.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomUsernameTextField.dart';
class SignUpScreen extends StatefulWidget {
  static const route = '/SignUpScreen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Additional signup =Additional();
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          const CustomSignUpTopUI(),
          Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: Container(
              height: height*1,
              width: width*1,
              decoration: const BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,left: 20,right: 20),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: height*0.05,
                    ),
                    CustomNameTextField(controller: name),
                    CustomUsernameTextField(controller: username),
                    CustomEmailTextField(controller: email),
                    CustomPasswordTextField(controller: password),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10.0),
                      child: CustomElevatedButton(onPressed: (){}, text: Additional().register),
                    ),
                    const SignupToLogin()
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}