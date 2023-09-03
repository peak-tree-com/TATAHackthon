import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Widget/CustomElevated/CustomElevatedButton.dart';
import 'package:tatahackathon/Feature/Widget/CustomElevated/CustomOnboardingElevated.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomPasswordTextField.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomTextField.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopBold.dart';
import 'package:tatahackathon/Feature/Widget/CustomText/CustomTextPopReg.dart';
import 'package:tatahackathon/util.dart';

class LoginScreen extends StatefulWidget {
  static const route = '/LoginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  Additional signup =Additional();
  late Box? box1;

  @override
  void initState() {
    super.initState();
    createBox();
  }

  void createBox()async{
    box1 = await Hive.openBox('loginPage');
    getData();
  }

  void login(){
    if(isChecked){
      box1!.put('email', email.text);
      box1!.put('password', password.text);
    }
  }
  void getData(){
    if(box1!.get('email')!=null){
      email.text = box1!.get('email');
    }
    if(box1!.get('password')!=null){
      password.text = box1!.get('password');
    }
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height*1,
            width: width*1,
            color: themeColor,
            child: Padding(
              padding: const EdgeInsets.only(top:60.0,left: 22),
              child: CustomTextPopBold(text: signup.signInText,fontSize: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: Container(
              height: height*1,
              width: width*1,
              decoration: const BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomEmailTextField(controller: email,),
                    CustomPasswordTextField(controller: password),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        SizedBox(
                          child: Row(
                            children: [
                              RoundCheckBox(
                                isChecked: isChecked,
                                onTap: (value){
                                  isChecked = !isChecked;
                                  setState(() {
                                    
                                  });
                                },
                                size: 25,
                                checkedColor: homeColor,
                                checkedWidget: const Icon(Icons.done,color: Colors.white,)
                                ),
                                Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: CustomTextPopReg(text: 'Remeber', fontSize: 14,color: blackWithOpacity,),
                          ),
                            ],
                          ),
                        ),
                          
                          Row(
                            children: [
                              CustomTextPopReg(text: 'Forget Password? ', fontSize: 14,color: blackWithOpacity,),
                              const CustomTextPopReg(text: 'Sign Up', fontSize: 14, color: homeColor)
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      onPressed: (){
                        login();
                      }, 
                      text: Additional().login)
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
