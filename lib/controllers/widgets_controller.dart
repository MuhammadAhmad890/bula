import 'package:get/get.dart';

class WidgetsController extends GetxController {
  RxBool showPassword = true.obs;
  RxString regionName = "search".obs;
  RxInt navBarIndex = 0.obs;



  hidePassword() {
    showPassword.value = !showPassword.value;
  }

  selectRegion(String name) {
    regionName.value = name;
  }
  navigateTo(int number) {
    navBarIndex.value = number;
  }
}
