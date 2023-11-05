import 'package:get/get.dart';

import '../controllers/widgets_controller.dart';

class AppUtils {
  static final navController = Get.find<WidgetsController>();

   static onBackPressed() {
    navController.navigateTo(0);
  }
}
