import 'package:flutter/material.dart';
import 'package:ftb/dashBoardPage.dart';
import 'package:ftb/homePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: " Route Navigation For named Routes ",
        initialRoute: "/",
        defaultTransition: Transition.rightToLeftWithFade,
        getPages: [
          GetPage(name: "/", page: () => MyApp()),
          GetPage(name: '/HomePage', page: () => HomePage()),
          GetPage(name: '/DashboardPage', page: () => DashBoardPage()),
        ],
        home: Scaffold(
            appBar: AppBar(
              title: Text(" Route Navigation For named Routes "),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/HomePage");
                    },
                    child: Text(" Go to Home"))
              ],
            ))));
  }
}
