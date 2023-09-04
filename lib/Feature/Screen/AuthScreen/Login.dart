import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:tatahackathon/Constraints/Constraints.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/CustomChoiceWidget.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/CustomTopUi.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/CustomRememberText.dart';
import 'package:tatahackathon/Feature/Widget/AuthPage/LogintoSignup.dart';
import 'package:tatahackathon/Feature/Widget/CustomElevated/CustomElevatedButton.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomPasswordTextField.dart';
import 'package:tatahackathon/Feature/Widget/CustomTexfield.dart/CustomTextField.dart';
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
          const CustomLoginTopUI(),
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
                padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
                child:  ListView(
                  children: [
                    SizedBox(height: height*0.065,),
                    CustomEmailTextField(controller: email,),
                    CustomPasswordTextField(controller: password),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          const CustomRememberText()
                          
                        ],
                      ),
                    ),
                    LoginToSignup(),
                    CustomElevatedButton(
                      onPressed: (){
                        login();
                      }, 
                      text: Additional().login),
                    CustomChoiceWidget(
                      googleOnpressed: (){},
                      guestOnpressed: (){},
                    ),
                    
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
