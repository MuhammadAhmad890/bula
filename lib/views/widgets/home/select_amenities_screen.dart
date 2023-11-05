import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/screens/home/select_next_amenitites_screen.dart';
import 'package:bula/views/widgets/home/amenities_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../account/custom_back_button.dart';

class SelectAmenitiesScreen extends StatelessWidget {
  const SelectAmenitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            padding: AppSizes.bodyHorizontalPadding,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFD2AE6D)),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Text(
              'Save and Exit',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              padding: AppSizes.bodyHorizontalPadding,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD2AE6D)),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Text(
                'Questions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          const Text(
            'You can add more amenities after you publish \nyour listing.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 2.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AmenitiesWidget(icon: Icons.wifi_outlined, name: 'Wifi'),
              AmenitiesWidget(icon: Icons.tv_outlined, name: 'Television'),
            ],
          ),
          SizedBox(height: 2.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AmenitiesWidget(icon: Icons.kitchen_outlined, name: 'Kitchen'),
              AmenitiesWidget(icon: Icons.wash_outlined, name: 'Washing Machince'),
            ],
          ),
          SizedBox(height: 2.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AmenitiesWidget(icon: Icons.garage_outlined, name: 'Free Parking'),
              AmenitiesWidget(icon: Icons.car_rental_outlined, name: 'Paid Parking'),
            ],
          ),
          SizedBox(height: 2.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AmenitiesWidget(icon: Icons.air_outlined, name: 'Air-Conditioner'),
              AmenitiesWidget(icon: Icons.desk_outlined, name: 'Dedicated WorkPlace'),
            ],
          ),
          SizedBox(height: 2.h),
          Align(
            alignment: Alignment.center,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 4,
              effect: const ExpandingDotsEffect(activeDotColor: Color(0xFF2196F3)),
              onDotClicked: (index) {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          height: 10.h,
          padding: AppSizes.bodyHorizontalPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Divider(color: Color(0xFFD9D9D9)),
              Padding(
                padding: EdgeInsets.only(bottom: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Back',
                      style: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        height: 0.10,
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(() => const SelectNextAmenitiesScreen()),
                      child: Container(
                        width: 20.w,
                        height: 5.h,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2196F3),
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 12,
                              offset: Offset(1, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
