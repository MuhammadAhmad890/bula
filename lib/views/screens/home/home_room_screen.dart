import 'package:bula/controllers/home_controller.dart';
import 'package:bula/utils/constants/app_keys.dart';
import 'package:bula/views/screens/home/beach_home.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/home/bottom_nav_bar.dart';
import '../../widgets/home/category_widget.dart';
import '../../widgets/home/destination_widget.dart';
import '../../widgets/home/property_widget.dart';

class HomeRoomScreen extends GetView<HomeController> {
  const HomeRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              children: [
                const DestinationWidget(),
                SizedBox(height: 2.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryWidget(category: "hotel&resort", icon: Icons.bed),
                    CategoryWidget(category: "Apartments", icon: Icons.apartment),
                    CategoryWidget(category: "Home Stays", icon: Icons.home),
                    CategoryWidget(category: "Shared Housing", icon: CupertinoIcons.group),
                    CategoryWidget(category: "Monthly Rentals", icon: Icons.local_atm),
                  ],
                ),
                SizedBox(height: 2.h),
                Obx(() {
                  if (controller.homeView.value == "hotel&resort") {
                    return Column(
                      children: [
                        InkWell(
                          onTap:()=>Get.to(()=>const BeachHome()),
                          child: const PropertyWidget(imagesList: [
                            AppKeys.kBed1,
                            AppKeys.kBed2,
                            AppKeys.kBed3,
                          ], title: "Karabi"),
                        ),
                        SizedBox(height: 2.h),
                        const PropertyWidget(imagesList: [
                          AppKeys.kBed3,
                          AppKeys.kBed1,
                          AppKeys.kBed2,
                        ], title: "Karabi"),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        InkWell(
                          onTap:()=>Get.to(()=>const BeachHome()),
                          child: const PropertyWidget(imagesList: [
                            AppKeys.kBeach1,
                            AppKeys.kBeach2,
                            AppKeys.kBeach3,
                          ], title: "Karabi"),
                        ),
                        SizedBox(height: 2.h),
                        const PropertyWidget(imagesList: [
                          AppKeys.kBeach3,
                          AppKeys.kBeach2,
                          AppKeys.kBed1,
                        ], title: "Karabi"),
                      ],
                    );
                  }
                })
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 20.w,
                height: 5.h,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.699999988079071),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 2.w),
                    const Text(
                      "Map",
                      style: TextStyle(
                        color: Color(0xFFBABABA),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.30,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
