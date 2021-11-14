import 'package:flutter/material.dart';
import 'package:ftb/home_getx.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Home "),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(" The Value is ${Get.find<HomegetX>().count}"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<HomegetX>().increment();
                },
                child: Text(" Increment Button "),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back"),
              ),
            ]),
      ),
    );
  }
}
