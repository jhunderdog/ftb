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

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Controller controller =
  //     Get.put(Controller(), tag: "coding cafe 1", permanent: true);
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => Controller(), tag: "coding cafe 1", fenix: true);
    // Get.create(() => Controller());
    Get.putAsync<Controller>(() async => await Controller());
    return GetMaterialApp(
        title: " Dependency Injection ",
        home: Scaffold(
          appBar: AppBar(
            title: AppBar(
              title: Text(" Dependency Injection "),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Get.find<Controller>(tag: "coding cafe 1");
                    // Get.find<Controller>(tag: "coding cafe 1");
                    // Get.find<Controller>();
                    Get.find<Controller>().increment();
                  },
                  child: Text(" Click Here"),
                )
              ],
            ),
          ),
        ));
  }
}
