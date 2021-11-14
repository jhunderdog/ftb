import 'package:ftb/home_getx.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomegetX>(HomegetX());
  }
}
