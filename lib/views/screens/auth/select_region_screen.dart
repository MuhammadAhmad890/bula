import 'package:bula/views/widgets/auth/custom_button.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../controllers/widgets_controller.dart';
import '../../widgets/auth/form_label.dart';
import 'sign_in_screen.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectRegionScreen extends StatelessWidget {
  const SelectRegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WidgetsController());
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              vertical: 22.h,
              horizontal: 10.w,
            ),
            children: [
              const FormLabel(text: 'Select your region'),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.search),
                  GestureDetector(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        onSelect: (val) {
                          controller.selectRegion(val.name);
                        },
                      );
                    },
                    child: Container(
                      width: 30.5.h,
                      height: 5.h,
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF7B7B7B)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Obx(() => Text(
                            controller.regionName.value,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                  ),
                  const Icon(Icons.clear_sharp),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              CustomButton(
                  function: () {
                    Get.to(() => const SignInScreen());
                  },
                  name: "Next")
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
