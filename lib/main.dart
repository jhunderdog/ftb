import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/dashBoardPage.dart';
import 'package:ftb/home_page.dart';
import 'package:ftb/student.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var student = Student();
  final student = Student(name: "JH", age: 21).obs;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: " State Management By Using Obx & Custom Class ",
      home: Scaffold(
          appBar: AppBar(
            title: Text(" State Management By Using Obx & Custom Class "),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    " Name is ${student.value.name}",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    // student.name.value = student.name.value.toUpperCase();
                    student.update((student) {
                      student!.name = student.name.toString().toUpperCase();
                    });
                  },
                  child: Text(" Upper Case Letter "),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    // student.name.value = student.name.value.toLowerCase();
                    student.update((student) {
                      student!.name = student.name.toString().toLowerCase();
                    });
                  },
                  child: Text(" Lower Case Letter"),
                )
              ],
            ),
          )),
    );
  }
}
