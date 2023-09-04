import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Login.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Signup.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';
import 'package:tatahackathon/util.dart';

class LoginToSignup extends StatelessWidget {
  const LoginToSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextPopReg(
          text: Additional().forgetPasword, 
          fontSize: 14, 
          color: blackWithOpacity,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SignUpScreen.route);
          },
          child: CustomTextPopReg(
            text: Additional().signup, 
            fontSize: 14, 
            color: homeColor
          )
        )
      ],
    );
  }
}


class SignupToLogin extends StatelessWidget {
  const SignupToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextPopReg(
          text: Additional().account, 
          fontSize: 14, 
          color: blackWithOpacity,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, LoginScreen.route);
          },
          child: CustomTextPopReg(
            text: Additional().login, 
            fontSize: 15, 
            color: homeColor
          )
        )
      ],
    );
  }
}