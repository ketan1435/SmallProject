import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:luck/Binding/binding.dart';
import 'package:luck/Routs/app_page.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
     // for Fetching all data:-
     // QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("users").get();
     //
     // for(var doc in snapshot.docs)
     //   {
     //     debugPrint(doc.data().toString());
     //
     //}

     //
     // //for Fetching Particular data
     // DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection("users").doc("S90Zikpy9DynkrzADuGR").get();
     //
     // debugPrint(snapshot.data().toString());

    //  // For Add data
    //    var newUserdata = {
    //   "name":"Harshad",
    //   "Email":"harshad@gmail.com",
    //   "Age":"24"
    // };
    //   FirebaseFirestore.instance.collection("users").add(newUserdata);
    //   debugPrint("New User Saved");

    // For set particular Documents

    // var newUserdata = {
    //   "name":"Sunny",
    //   "email":"sunny@gmail.com",
    //   "age":"21"
    // };
    // FirebaseFirestore.instance.collection("users").doc("New_User_Id").set(newUserdata);

  // For Update Data
  // var newUserdata = {
  //   "name":"Sunny",
  //   "email":"sunny@gmail.com",
  //   "age":"21"
  //  };
  // FirebaseFirestore.instance.collection("users").doc("New_User_Id").update(
  //  {
  //    "age":"22"
  //  }
  // );

    // For Deleting data
    // FirebaseFirestore.instance.collection("users").doc("New_User_Id").delete();

     runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:  AppPages.INITIALROUTE,
      getPages:AppPages.pages,
    );
  }
}

