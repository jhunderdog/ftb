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

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: " Unique Id ",
        home: Scaffold(
          appBar: AppBar(
            title: Text(" Unique Id "),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<Controller>(
                id: 'Counter',
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  );
                },
              ),
              GetBuilder<Controller>(
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  );
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Text("Decrement"),
              )
            ],
          )),
        ));
  }
}
