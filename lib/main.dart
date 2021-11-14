import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView<Controller> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());
    return GetMaterialApp(
      title: " GetView ",
      home: Scaffold(
        appBar: AppBar(title: const Text(" Get View")),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    " The Value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      print(controller.hashCode);
                      controller.increment();
                    },
                    child: Text("Increment Button")),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      print(controller.hashCode);
                      controller.decrement();
                    },
                    child: Text("Decrement Button"))
              ]),
        ),
      ),
    );
  }
}
