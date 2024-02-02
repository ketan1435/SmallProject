import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luck/Controller/controller.dart';
import 'package:luck/Screen/home_screen.dart';
import 'package:luck/Screen/login_screen.dart';
import 'package:luck/Utils/app_colors.dart';
import 'package:luck/Utils/textstyle.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  SignUpController signUpController = Get.find();
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  LoginScreenController loginScreenController = Get.put(LoginScreenController());

@override
  void dispose() {
    // TODO: implement dispose
    signUpController.emailController.text.toString();
    signUpController.passController.text.toString();
    signUpController.cPassController.text.toString();
  }
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
             key:signUpController.signupkey,
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                   child: TextFormField(
                     controller: signUpController.emailController,
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
                     controller: signUpController.passController,
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
                   padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                   child: TextFormField(
                     controller: signUpController.cPassController,
                     decoration: InputDecoration(
                         labelText: "Confirm Password",
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
                         return "Please Confirm Your Password";
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
                       if(signUpController.signupkey.currentState!.validate())
                         {
                           if(signUpController.passController.text != signUpController.cPassController.text)
                             {
                               signUpController.createAccount();
                               showDialog(
                                   context: context,
                                   builder: (BuildContext contex)
                                   {
                                     return AlertDialog(
                                       title: Center(child: Text("Erorrr1111",style: TextHelper.h4,),),
                                       content: Text("Password And Confirm Password are Mismatch"),
                                       backgroundColor:AppColor.buttonColor,
                                       actions: [
                                         TextButton(
                                             onPressed:(){
                                               signUpController.emailController.clear();
                                               signUpController.passController.clear();
                                               signUpController.cPassController.clear();
                                               Get.back();
                                             },
                                             child:Center(child: Text("Ok",style: TextHelper.h4,))
                                         )
                                       ],
                                     );
                                   }
                               );
                             }
                           else
                           {
                             showDialog(
                                 context: context,
                                 builder: (BuildContext contex)
                                 {
                                   return AlertDialog(
                                     title: Center(
                                         child: Text("Congratullation",style: TextHelper.h4,)),
                                     content: Row(
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.only(left: 50),
                                           child: Text("Login Succesfull",style: TextHelper.h6,),
                                         ),
                                       ],
                                     ),
                                     actions: [
                                       TextButton(
                                           onPressed: ()
                                           {
                                             signUpController.emailController.clear();
                                             signUpController.passController.clear();
                                             signUpController.cPassController.clear();
                                             Get.back();
                                           },
                                           child: Center(
                                               child:Text("Ok",style: TextHelper.h4,))
                                       )
                                     ],
                                     backgroundColor:AppColor.buttonColor
                                   );
                                 }
                             );
                           }
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
                           child: Text("Register",style: TextHelper.h5.copyWith(color:Colors.red),)),
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
                    text: "Already have an account??"
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap=(){
                     Get.to(LoginScreen());
                    },
                    text: " Login Here",style: TextHelper.h7.copyWith(color:Colors.deepOrange)
                  )
                ]
              ))
        ],
      ),
    );
  }
}
