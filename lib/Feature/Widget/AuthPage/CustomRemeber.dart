// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:tatahackathon/util.dart';

class CustomRoundCheckedBox extends StatefulWidget {
  bool isChecked;
  CustomRoundCheckedBox({super.key,required this.isChecked});

  @override
  State<CustomRoundCheckedBox> createState() => _CustomRoundCheckedBoxState();
}

class _CustomRoundCheckedBoxState extends State<CustomRoundCheckedBox> {
  @override
  Widget build(BuildContext context) {
    return RoundCheckBox(
      isChecked: widget.isChecked,
      onTap: (value){
        setState(() {
        widget.isChecked = !widget.isChecked;});
      },
      size: 30,
      checkedColor: homeColor,
      checkedWidget: const Icon(Icons.done,color: Colors.white,)
    );
  }
}