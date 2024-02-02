

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:luck/Screen/home_screen.dart';
import 'package:luck/Utils/textstyle.dart';

class SignUpController extends GetxController
{

   final signupkey = GlobalKey<FormState>();
   var emailController = TextEditingController();
   var passController = TextEditingController();
   var cPassController = TextEditingController();

   void createAccount() async{
      var email = emailController.text.trim();
      var pass = passController.text.trim();
      UserCredential userCredential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: pass
      );
   }
}

class HomeScreenController extends GetxController
{


}

class LoginScreenController extends GetxController
{

   final loginkey = GlobalKey<FormState>();
   var emailController = TextEditingController();
   var passController = TextEditingController();

     loginPage() async{

      String email = emailController.text.trim();
      String password = passController.text.trim();

      try{
         UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
             email: email,
             password: password
         );
         if(userCredential.user!=null){
            Get.to(HomeScreen());
         }
      }on FirebaseAuthException catch(error)
      {
         debugPrint(error.code.toString());
        showDialog(
            context:loginPage(),
            builder: (BuildContext context)
            {
               return AlertDialog(
                  title: Center(
                      child: Text("Sorry!!!")),
                  content: Center(
                      child: Text("Please Enter Invalid Username or Password")),
                  actions: [
                     TextButton(
                         onPressed:(){
                            Get.back();
                         },
                         child:Text("Ok",style: TextHelper.h6,)
                     )
                  ],
               );
            }
        );
      }


   }


}