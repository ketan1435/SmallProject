import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luck/Controller/controller.dart';
import 'package:luck/Screen/Sign_up.dart';
import 'package:luck/Screen/home_screen.dart';
import 'package:luck/Utils/app_colors.dart';
import 'package:luck/Utils/textstyle.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginScreenController loginScreenController = Get.find();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: mediaQuery.size.height*0.35,
          ),
          Form(
              key:loginScreenController.loginkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: TextFormField(
                      controller: loginScreenController.emailController,
                      decoration: InputDecoration(
                          labelText: "Enter Username",
                          labelStyle: TextHelper.h6,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color:AppColor.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color:AppColor.borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color:AppColor.borderColor),
                          )
                      ),
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return "Please Enter name";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: TextFormField(
                      controller:loginScreenController.passController,
                      decoration: InputDecoration(
                          labelText: "Enter Password",
                          labelStyle: TextHelper.h6,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color:AppColor.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color:AppColor.borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color:AppColor.borderColor),
                          )
                      ),
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return "Please Enter Your Password";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                    child: GestureDetector(
                      onTap: (){
                        if(loginScreenController.loginkey.currentState!.validate())
                        {
                          loginScreenController.loginPage();
                        }
                      },
                      child: Container(
                        height: mediaQuery.size.height*0.05,
                        width:  mediaQuery.size.width*0.40,
                        decoration: BoxDecoration(
                            color:AppColor.buttonColor,
                            borderRadius: BorderRadius.circular(11)
                        ),
                        child: Center(
                            child: Text("Login",style: TextHelper.h5.copyWith(color:Colors.red),)),
                      ),
                    ),
                  )
                ],
              )
          ),
          SizedBox(height: 10,),
          RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Don't have an account ??"
                    ),
                    TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){
                          Get.to(SignUpScreen());
                        },
                        text: " Register Here",style: TextHelper.h7.copyWith(color:Colors.deepOrange)
                    )
                  ]
              ))
        ],
      ),
    );
  }
}
