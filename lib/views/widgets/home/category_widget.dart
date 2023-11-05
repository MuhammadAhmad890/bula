import 'package:bula/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoryWidget extends GetView<HomeController> {
  final IconData icon;
  final String category;

  const CategoryWidget({
    super.key,
    required this.category,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeHomeView(category);
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: const Color(0xFF7C7C7C),
            size: 10.w,
          ),
          Text(
            category,
            style: const TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 10,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.30,
            ),
          )
        ],
      ),
    );
  }
}
