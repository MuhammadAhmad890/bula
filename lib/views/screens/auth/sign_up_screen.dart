import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controllers/widgets_controller.dart';
import '../../../utils/constants/app_keys.dart';
import '../../widgets/auth/custom_button.dart';
import '../../widgets/auth/custom_text_field.dart';
import '../../widgets/auth/form_description.dart';
import '../../widgets/auth/form_label.dart';
import '../../widgets/auth/third_party_button.dart';
import 'otp_verification_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordIconController = WidgetsController();
    final confirmPasswordIconController = WidgetsController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();
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
              const FormLabel(text: "Create Account"),
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
              SizedBox(height: 2.h),
              Obx(
                () => CustomTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  isPassword: confirmPasswordIconController.showPassword.value,
                  stateController: confirmPasswordIconController,
                ),
              ),
              SizedBox(height: 3.h),
              SizedBox(height: 3.h),
              CustomButton(
                  function: () {
                    Get.to(() => OtpVerificationScreen());
                  },
                  name: "Sign Up"),
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
                    'Already have an account?',
                    style: TextStyle(
                      color: Color(0xCC191919),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login Now',
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
