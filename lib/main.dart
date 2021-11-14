import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/app_controller.dart';
import 'package:ftb/controller.dart';
import 'package:ftb/first_controller.dart';
import 'package:ftb/home.dart';
import 'package:ftb/home_controller_binding.dart';
import 'package:ftb/second_controller.dart';
import 'package:get/get.dart';

void main() {
  AppController().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SecondController(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          binding: HomeControllerBinding(),
        ),
      ],
      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => Home(),
      //       binding: BindingsBuilder(() => {
      //             Get.lazyPut<HomeControllerBinding>(
      //                 () => HomeControllerBinding())
      //           }))
      // ],
      title: " Binding GetX ",
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Binding GetX "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  " The value is ${Get.find<FirstController>().count}",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<FirstController>().increment();
                },
                child: Text("Increment Button"),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(Home());
                  Get.toNamed('/home');
                  // Get.to(Home(), binding: HomeControllerBinding());
                },
                child: Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
