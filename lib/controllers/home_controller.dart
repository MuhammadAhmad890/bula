import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  RxInt pageIndex = 0.obs;
  RxString homeView = "hotel&resort".obs;
  final PageController pageController = PageController();



  onPageChange(int number) {
    pageIndex.value = number;
  }

  changeHomeView(String view) {
    homeView.value = view;
  }
}
