import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/screens/account/account_details_screen.dart';
import 'package:bula/views/screens/account/bookin_cancel_policy.dart';
import 'package:bula/views/screens/account/customer_support_screen.dart';
import 'package:bula/views/screens/account/notifiaction_screen.dart';
import 'package:bula/views/screens/account/privacy_policy_screen.dart';
import 'package:bula/views/screens/account/terms_and_conditions_screen.dart';
import 'package:bula/views/widgets/account/about_button.dart';
import 'package:bula/views/widgets/home/bottom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: AppSizes.bodyHorizontalPadding,
            child: GestureDetector(
              onTap: () {
                Get.to(() => const NotificationScreen());
              },
              child: const Icon(Icons.notifications_active_outlined),
            ),
          )
        ],
      ),
      body: ListView(
        padding: AppSizes.bodyHorizontalPadding,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            alignment: Alignment.center,
            height: 17.h,
            decoration: ShapeDecoration(
              color: const Color(0xFFEEF1F6),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFBEDEEF)),
                borderRadius: BorderRadius.circular(4),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x1900537D),
                  blurRadius: 6,
                  offset: Offset(0, 6),
                  spreadRadius: 0,
                )
              ],
            ),
            child: ListTile(
              leading: Image.asset("assets/images/person.png"),
              title: const Text("Sayan Dutta"),
              subtitle: const Text("1234567892"),
              titleTextStyle: const TextStyle(
                color: Color(0xFF060C11),
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
              subtitleTextStyle: const TextStyle(
                color: Color(0xFF060C11),
                fontSize: 17,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => const AccountDetailsScreen());
                },
                child: Container(
                  width: 43.w,
                  height: 17.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xFFEFF1F3),
                        blurRadius: 6,
                        offset: Offset(0, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        color: Color(0xFF7B7B7B),
                      ),
                      Text(
                        'My Profile',
                        style: TextStyle(
                          color: Color(0xFF1A2A34),
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 43.w,
                height: 17.h,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0xFFEFF1F3),
                      blurRadius: 6,
                      offset: Offset(0, 6),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Color(0xFF7B7B7B),
                    ),
                    Text(
                      'My Profile',
                      style: TextStyle(
                        color: Color(0xFF1A2A34),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          const Text(
            'About',
            style: TextStyle(
              color: Color(0xFF687787),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          SizedBox(height: 3.h),
          SizedBox(
            height: 35.h,
            child: ListView(
              children: [
                AboutButton(
                    title: "App Version",
                    subtitle: "4.42.0 (It’s up-to-date)",
                    onTrailTap: () {}),
                AboutButton(
                    title: "Terms and Conditions",
                    subtitle: "All the stuff you need to know",
                    onTrailTap: () {
                      Get.to(() => const TermsAndConditionsScreen());
                    }),
                AboutButton(
                    title: "Privacy Policy",
                    subtitle: "Very important for both of us",
                    onTrailTap: () {
                      Get.to(() => const PrivacyPolicyScreen());
                    }),
                AboutButton(
                    title: "Booking Cancel Policy",
                    subtitle: "Very important for both of us",
                    onTrailTap: () {
                      Get.to(() => const BookingCancelPolicy());
                    }),
                AboutButton(
                    title: "Support",
                    subtitle: "How can we help you",
                    onTrailTap: () {
                      Get.to(() => const CustomSupportScreen());
                    }),
                SizedBox(height: 7.h),
                SizedBox(
                  height: 6.h,
                  child: Row(
                    children: [
                      Container(
                        width: 10.w,
                        height: 6.h,
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                      ),
                      SizedBox(width: 5.w),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Log out",
                            style: TextStyle(
                              color: Color(0xFF1A2A34),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "you are logged in as Sayan Dutta",
                            style: TextStyle(
                              color: Color(0xFF060C11),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  height: 7.h,
                  child: Row(
                    children: [
                      Container(
                        width: 10.w,
                        height: 6.h,
                        color: Theme.of(context).colorScheme.error.withOpacity(0.5),
                      ),
                      SizedBox(width: 5.w),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Log out of All Devices",
                            style: TextStyle(
                              color: Color(0xFF1A2A34),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Log out of All Devices, you are logged in",
                            style: TextStyle(
                              color: Color(0xFF060C11),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
