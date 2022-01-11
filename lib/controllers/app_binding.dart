import 'package:get/get.dart';
import 'package:getx_theme/controllers/app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }

}