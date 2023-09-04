import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

void showErrorSnackBar(BuildContext context, String text) {
  showCupertinoDialog(context: context, builder:(context) => CupertinoAlertDialog(
    title: Text(
      'Warning',
      style: TextStyle(
        color: warningColor,
        fontFamily: FontFamily().popBold
      ),
    ),
    content: Text(text),
    actions: [
      CupertinoDialogAction(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Text('ok'))
    ],
  ),);
}

void showSnackBar(BuildContext context, String text) {
  showCupertinoDialog(context: context, builder:(context) => CupertinoAlertDialog(
    title: Text(
      'Successfull!',
      style: TextStyle(
        fontFamily: FontFamily().popBold
      ),
    ),
    content: Text(text),
    actions: [
      CupertinoDialogAction(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Text('ok'))
    ],
  ),);
}