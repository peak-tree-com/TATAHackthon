import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenOne.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenThree.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenTwo.dart';
import 'package:tatahackathon/util.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                _skip = (value == 2);
                _continue = (value == 2);
              });
            },
            controller: _controller,
            children: const [ScreenOne(), ScreenTwo(), LoginPage()],
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
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, LoginPage.route, (route) => false);
                          },
                          child: Text(
                            onboarding.continueTxt,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15.5),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: const Text(
                            'Skip >',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.5),
                          ),
                        ),
                ],
              ),
            ),
          ),
          Align(
              alignment: const Alignment(0, 0.85),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(240, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    onboarding.continueTxt,
                    style: TextStyle(
                        color: themeColor, fontFamily: fontFamily().popMEd),
                  )))
        ],
      ),
    );
  }
}
