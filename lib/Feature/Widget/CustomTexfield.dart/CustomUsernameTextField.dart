import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class CustomUsernameTextField extends StatefulWidget {
  final TextEditingController controller;
  const CustomUsernameTextField({super.key,required this.controller});

  @override
  State<CustomUsernameTextField> createState() => _CustomUsernameTextFieldState();
}

class _CustomUsernameTextFieldState extends State<CustomUsernameTextField> {
  String _errorText = '';
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:10.0,bottom:10.0,),
      child: TextField(
        keyboardType: TextInputType.name,
        controller: widget.controller,
        style: TextStyle(
          color: Colors.black.withOpacity(0.7),
          fontFamily: FontFamily().popReg
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: FontFamily().popReg,
            fontSize: 16,
            color: Colors.black.withOpacity(0.7)
          ),
          prefixIcon: Icon(
            Icons.person_4_outlined,
            color:_errorText.isEmpty? homeColor:warningColor,
          ),
          hintText: Additional().userName,
          errorText: _errorText.isEmpty?null:_errorText,
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(width: 2,color: homeColor),
            borderRadius: BorderRadius.circular(20)
          ),
          errorBorder: OutlineInputBorder(
            borderSide:  BorderSide(width: 2,color: warningColor),
            borderRadius: BorderRadius.circular(20)
          ),
          errorMaxLines: 2,
          errorStyle: TextStyle(
            fontSize: 14,
            fontFamily: FontFamily().popReg
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2,color: homeColor),
            borderRadius: BorderRadius.circular(20)
          )
        ),
        onChanged: (value) {
          setState(() {
            if(value.length>=5){
              _errorText = '';
            }
            else{
              _errorText = Additional().userNameErrorMsg;
            }
          });
        },
      ),
    );
  }
}