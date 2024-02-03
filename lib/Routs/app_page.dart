
import 'package:get/get.dart';
import 'package:luck/Binding/binding.dart';
import 'package:luck/Routs/routs.dart';
import 'package:luck/Screen/Sign_up.dart';
import 'package:luck/Screen/home_screen.dart';
import 'package:luck/Screen/login_screen.dart';

class AppPages
{

  static final INITIALROUTE = Routs.HOMEROUTE;

  static final pages = [
    GetPage(
        name: Routs.SIGNUPROUTE,
        page: ()=>SignUpScreen(),
        binding: SignUpBinding()
    ),
    GetPage(
        name: Routs.HOMEROUTE,
        page: ()=>HomeScreen(),
        binding:HomeScreenBinding()
    ),
    GetPage(
        name: Routs.LOGINROUTE,
        page: ()=>LoginScreen(),
        binding:LoginScreenBinding()
    ),
  ];
}