import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/screens/account/safety_screen.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/account/facititiy_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HotelRules extends StatelessWidget {
  const HotelRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyHorizontalPadding,
        children: [
          SizedBox(height: 4.h),
          InkWell(
            onTap: () {
              Get.to(() => const SafetyScreen());
            },
            child: const Text(
              'Hotel Rules',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          const Text(
            "You'll be staying in someone's home, so please treat \n it with care and respect.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 2.h),
          const Text(
            'During your stay',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 2.h),
          const FacilityWidget(text: "2 guests maximum", icon: Icons.group_outlined),
          SizedBox(height: 1.h),
          const FacilityWidget(text: "Pets Allowed", icon: Icons.pets_outlined),
          SizedBox(height: 1.h),
          const FacilityWidget(text: "Smoking Allowed", icon: Icons.smoking_rooms_outlined),
          SizedBox(height: 1.h),
          const Divider(thickness: 2),
          SizedBox(height: 2.h),
          const Text(
            'Check in and Checkout',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          const FacilityWidget(text: "heck-in: 12:00 - 23:00", icon: Icons.access_time_outlined),
          SizedBox(height: 1.h),
          const FacilityWidget(text: "Checkout before 11:00", icon: Icons.access_time_outlined),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
