import 'package:flutter/material.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/util.dart';

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  const CustomPasswordTextField({super.key,required this.controller});

  @override
  State<CustomPasswordTextField> createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  Additional signin = Additional();
  String _errorText = '';
  bool _isShow = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,bottom:10.0,),
      child: TextField(
        obscureText: _isShow,
        keyboardType: TextInputType.visiblePassword,
        controller: widget.controller,
        style: TextStyle(
          color: Colors.black.withOpacity(0.7),
          fontFamily: FontFamily().popReg
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: FontFamily().popReg,
            fontSize: 16,
            color:  Colors.black.withOpacity(0.7)
          ),
          prefixIcon: Icon(Icons.lock_outline,color:_errorText.isEmpty?homeColor: warningColor,),
          hintText: signin.password,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _isShow =!_isShow;
              });
            },
            child: Icon(
              _isShow==false?Icons.visibility_outlined :Icons.visibility_off_outlined,
              color: _errorText.isEmpty?homeColor:warningColor
            )
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
          errorText: _errorText.isEmpty?null:_errorText,
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(width: 2,color: homeColor),
            borderRadius: BorderRadius.circular(20)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2,color: homeColor),
            borderRadius: BorderRadius.circular(20)
          )
        ),
        onChanged: (value) {
          setState(() {
            if(value.length>=8&&value.contains(RegExp(r'[A-Z]'))){
              _errorText = '';
            }
            else{
              _errorText = Additional().passwordErrorMsg;
            }
          });
        },
      ),
    );
  }
}