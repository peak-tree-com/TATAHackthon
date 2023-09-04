import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/AuthScreen.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Login.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Signup.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenOne.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenThree.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenTwo.dart';
import 'package:tatahackathon/Feature/Widget/CustomElevated/CustomOnboardingElevated.dart';
import 'package:tatahackathon/Feature/Widget/CustomElevated/CustomOnboardingGestureDetector.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  Additional onboarding = Additional();
  final PageController _controller = PageController();
  bool _skip = false;
  bool _continue = false;
  bool _signin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                _skip = (index == 2);
                _continue = (index == 2);
                _signin = (index == 2);
              });
            },
            controller: _controller,
            children: const [ScreenOne(), ScreenTwo(), ScreenThree()],
          ),
          Align(
            alignment: const Alignment(-0.9, -0.85),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                      effect: const ExpandingDotsEffect(
                          dotHeight: 5, activeDotColor: Colors.white),
                      controller: _controller,
                      count: 3),
                  _skip
                      ? CustomOnboardingGestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context, AuthScreen.route);
                          },
                          text: onboarding.next)
                      : CustomOnboardingGestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          text: onboarding.skip),
                ],
              ),
            ),
          ),
          _continue
          //Navigate to signup Page
              ? Align(
                  alignment: const Alignment(0, 0.85),
                  child: CustomOnboardingElevated(
                    onPressed: () {
                      Navigator.pushNamed(
                        context, SignUpScreen.route,);
                    },
                    text: onboarding.signup,
                  ))
              : Align(
                  alignment: const Alignment(0, 0.85),
                  child: CustomOnboardingElevated(
                      onPressed: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.linear);
                      },
                      text: onboarding.continueTxt)),
          _signin
              ? 
              //Navigate login Page
              Align(
                alignment: const Alignment(0, 0.95),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.route);
                  },
                  child:  CustomTextPopReg(
                    text: onboarding.login,
                    fontSize:  16.5,
                    color: Colors.white,
                  ),
                )
              )
              : const Align(
                  alignment: Alignment(0, 0.85),
                  child: CustomTextPopReg(text: '',fontSize: 0,
                    color: Colors.white,))
        ],
      ),
    );
  }
}
