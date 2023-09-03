import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class CustomEmailTextField extends StatefulWidget {
  final TextEditingController controller;
  const CustomEmailTextField({super.key,required this.controller});

  @override
  State<CustomEmailTextField> createState() => _CustomEmailTextFieldState();
}

class _CustomEmailTextFieldState extends State<CustomEmailTextField> {
  String _errorText = '';
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:10.0,bottom:10.0,),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
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
            Icons.email_outlined,
            color:_errorText.isEmpty? homeColor:warningColor,
          ),
          hintText: Additional().email,
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
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2,color: homeColor),
            borderRadius: BorderRadius.circular(20)
          )
        ),
        onChanged: (value) {
          setState(() {
            if(value.contains('@')&&value.contains('.com')){
              _errorText = '';
            }
            else{
              _errorText = Additional().emailErrorMsg;
            }
          });
        },
      ),
    );
  }
}