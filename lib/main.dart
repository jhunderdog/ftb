import 'package:flutter/material.dart';
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
        title: " Route Navigation For Un-named Routes ",
        home: Scaffold(
            appBar: AppBar(
              title: Text(" Route Navigation For Un-named Routes "),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(
                        HomePage(),
                      );
                    },
                    child: Text(" Go to Home"))
              ],
            ))));
  }
}
