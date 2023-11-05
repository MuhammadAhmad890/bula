import 'package:bula/utils/constants/app_keys.dart';
import 'package:bula/views/screens/auth/home_screen.dart';
import 'package:bula/views/screens/auth/select_region_screen.dart';
import 'package:bula/views/widgets/auth/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAll(() => const SelectRegionScreen());
      },
    );
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingScaleUp(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 500)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF2196F3).withOpacity(0.5),
                    ),
                    child: CircleAvatar(
                      radius: 7.w,
                      child: Image.asset(
                        AppKeys.kLogo,
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  const Text(
                    AppKeys.kAppName,
                    style: TextStyle(
                        color: Color(0xFF2196F3), fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 500)),
              child: Image.asset(
                "assets/images/i_down.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromRight(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 500)),
              child: Image.asset(
                "assets/images/i_up.png",
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
