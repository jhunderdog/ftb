import 'package:ftb/first_controller.dart';
import 'package:ftb/home_getx.dart';
import 'package:get/get.dart';

class SecondController implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstController>(() => FirstController());
    Get.lazyPut<HomegetX>(() => HomegetX());
  }
}
