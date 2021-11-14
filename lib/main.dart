import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/controller.dart';
import 'package:ftb/dashBoardPage.dart';
import 'package:ftb/home_page.dart';
import 'package:ftb/messages.dart';
import 'package:ftb/student.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print(' This is the start of services ');
  await Get.putAsync<Service>(() async => await Service());
  print(' The Services are about to start');
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: " GetX Service ",
        home: Scaffold(
          appBar: AppBar(
            title: AppBar(
              title: const Text(" GetX Service "),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.find<Service>().increment();
                  },
                  child: const Text(" Increment Button "),
                )
              ],
            ),
          ),
        ));
  }
}
