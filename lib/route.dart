import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Login.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Signup.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenThree.dart';
import 'package:tatahackathon/util.dart';

Route<dynamic> onGenrate(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.route:
      return PageTransition(
          duration: const Duration(milliseconds:milliSeconds),
          child: const LoginScreen(), 
          type: PageTransitionType.fade,
          settings: settings,
        );
    case SignUpScreen.route:
      return PageTransition(
          duration: const Duration(milliseconds:milliSeconds),
          child: const SignUpScreen(), 
          type: PageTransitionType.fade,
          settings: settings,
        );
    default:
        return 
        PageTransition(
          duration: const Duration(seconds: 1),
          child: const Scaffold(
            body: Center(
              child: Text('Page Not Found'),
            ),
          ), 
          type: PageTransitionType.fade,
          settings: settings,
        );
  }
}
