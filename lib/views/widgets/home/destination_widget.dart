import 'package:bula/views/screens/home/filters_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/home/destination_screen.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.location_off),
          InkWell(
            onTap: () => Get.to(() => const DestinationScreen()),
            child: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Your destination?\n',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.30,
                    ),
                  ),
                  TextSpan(
                    text: 'Anywhere,any days,add guests',
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
              onTap: () => Get.to(() => const FiltersScreen()),
              child: const Icon(Icons.menu_open))
        ],
      ),
    );
  }
}
