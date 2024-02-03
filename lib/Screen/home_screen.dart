// ... other imports ...

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/controller.dart';
import '../Utils/app_colors.dart';
import '../Utils/textstyle.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                "F I R E B A S E",
                style: TextHelper.h6.copyWith(color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                homeScreenController.logOut();
              },
              child: Icon(Icons.exit_to_app, color: AppColor.buttonColor),
            ),
          ],
        ),
        toolbarHeight: 120,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          // ... your text form fields ...

          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              homeScreenController.saver();
            },
            child: Text("Save"),
          ),
          SizedBox(height: 30),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("users").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Loading indicator while waiting for data
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> userMap = snapshot.data!.docs[index].data() as Map<String, dynamic>;
                      return ListTile(
                        title: Text(userMap["name"]),
                        subtitle: Text(userMap["email"]),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
