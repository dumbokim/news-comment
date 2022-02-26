import 'package:collector_app/app/controller/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
