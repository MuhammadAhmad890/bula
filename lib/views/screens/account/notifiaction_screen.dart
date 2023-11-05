import 'package:bula/views/screens/account/notification_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../widgets/account/custom_back_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Account Details"),
          leading: const CustomBackButton()),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          SizedBox(height: 8.h),
          const Text(
            'Notification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0.05,
            ),
          ),
          SizedBox(height: 9.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => const NotificationDetailsScreen());
                },
                child: Icon(
                  Icons.notifications_active_outlined,
                  size: 15.w,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'No notification yet',
                style: TextStyle(
                  color: Color(0xFF1A2A34),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                ),

              ),
              SizedBox(height: 5.h),
              Text(
                'You have got a blank page (for now)\nwe will let you know when update arrived!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF060C11),
                  fontSize: 12,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
