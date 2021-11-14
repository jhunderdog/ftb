import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ftb/dashBoardPage.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            " THis is the Home Page Screen ",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/DashboardPage");
            },
            child: Text(
              " Go to Dashboard Page ",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
