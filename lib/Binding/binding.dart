

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:luck/Controller/controller.dart';

class SignUpBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}

class HomeScreenBinding extends Bindings
{
  @override
  void dependencies() {
   Get.lazyPut(() => HomeScreenController());
  }
}

class LoginScreenBinding extends Bindings
{
  @override
  void dependencies() {
  Get.lazyPut(() => LoginScreenController());
  }

}