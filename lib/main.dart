import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/dashBoardPage.dart';
import 'package:ftb/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: " State Management Reactive ",
        home: Scaffold(
            appBar: AppBar(
              title: Text(" State Management Reactive "),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      " Count value is $count",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      increment();
                    },
                    child: Text(" Increment Button "),
                  )
                ],
              ),
            )));
  }
}
