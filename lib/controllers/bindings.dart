import 'package:bula/controllers/widgets_controller.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WidgetsController>(() => WidgetsController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
