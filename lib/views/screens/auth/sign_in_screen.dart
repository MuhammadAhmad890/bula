import 'package:bula/controllers/widgets_controller.dart';
import 'package:bula/utils/constants/app_keys.dart';
import 'package:bula/views/screens/auth/sign_up_screen.dart';
import 'package:bula/controllers/dashboard/bottom_nav_bar.dart';
import 'package:bula/views/screens/home/home_room_screen.dart';
import 'package:bula/views/widgets/auth/custom_button.dart';
import 'package:bula/views/widgets/auth/form_description.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/auth/custom_text_field.dart';
import '../../widgets/auth/form_label.dart';
import '../../widgets/auth/third_party_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordIconController = Get.put(WidgetsController());
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(
              top: 22.9.h,
              left: 5.w,
              right: 5.w,
            ),
            children: [
              const FormLabel(text: "Welcome Back"),
              SizedBox(height: 1.h),
              const FormDescription(description: "to get started now!"),
              SizedBox(height: 2.h),
              CustomTextField(
                controller: emailController,
                hintText: "Email or Mobile Phone",
              ),
              SizedBox(height: 2.h),
              Obx(
                () => CustomTextField(
                  controller: passwordController,
                  hintText: "Password",
                  isPassword: passwordIconController.showPassword.value,
                  stateController: passwordIconController,
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(CupertinoIcons.lock, color: Color(0xFF2196F3)),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontSize: 15,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 3.h),
              CustomButton(
                  function: () {
                    Get.to(() => HomePage());
                  },
                  name: "Sign In"),
              SizedBox(height: 3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE0E0E0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'or sign In With',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF191919),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE0E0E0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ThirdPartyButton(name: "Google", imageUrl: AppKeys.kGoogle, onTap: () {}),
                  ThirdPartyButton(name: "Apple", imageUrl: AppKeys.kApple, onTap: () {}),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'have not any account?',
                    style: TextStyle(
                      color: Color(0xCC191919),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: const Text(
                        'Sing Up Now',
                        style: TextStyle(
                          color: Color(0xFF006CFF),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                ],
              )
            ],
          ),
          Positioned(
            top: -10.h,
            right: 0,
            left: 0,
            child: Transform.flip(
              flipX: false,
              flipY: true,
              child: Image.asset(
                "assets/images/i_up.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: -14.h,
            right: 0,
            left: 0,
            child: Transform.flip(
              flipY: true,
              flipX: false,
              child: Image.asset("assets/images/i_down.png", fit: BoxFit.fill,),
            ),
          )
        ],
      ),
    );
  }
}
