import 'package:flutter/material.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/ScreenThree.dart';

Route<dynamic> onGenrate(RouteSettings settings) {
  switch (settings.name) {
    case ScreenThree.route:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const ScreenThree(),
      );

    default:
      {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Page Not Found'),
            ),
          ),
        );
      }
  }
}
