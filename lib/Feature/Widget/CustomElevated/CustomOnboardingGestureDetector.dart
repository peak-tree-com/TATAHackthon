import 'package:flutter/material.dart';

class CustomOnboardingGestureDetector extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomOnboardingGestureDetector(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 15.5),
      ),
    );
  }
}
