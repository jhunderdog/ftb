import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/controller.dart';
import 'package:ftb/dashBoardPage.dart';
import 'package:ftb/home_page.dart';
import 'package:ftb/student.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: " Reactive State Manager By Using GetX Controller ",
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Reactive State Manager By Using GetX Controller "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<Controller>(
                // init: Controller(),
                builder: (controller) {
                  return Text(" The value is ${controller.count}",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold));
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.find<Controller>().increment();
                  controller.increment();
                },
                child: Text(" Increment Button "),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.find<Controller>().decrement();
                  controller.decrement();
                },
                child: Text(" Decrement Button "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
