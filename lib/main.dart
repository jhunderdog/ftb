import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: " Bottom Sheet ",
      home: Scaffold(
        appBar: AppBar(
          title: Text(" This is Bottom Sheet GetX"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.wb_incandescent),
                        title: Text(" Light Theme "),
                        onTap: () => {Get.changeTheme(ThemeData.light())},
                      ),
                      ListTile(
                          leading: Icon(Icons.wb_incandescent_outlined),
                          title: Text(" Dark Theme "),
                          onTap: () => {Get.changeTheme(ThemeData.dark())})
                    ],
                  ),
                ));
              },
              child: Text(" Bottom Sheet Button "),
            )
          ],
        )),
      ),
    );
  }
}
