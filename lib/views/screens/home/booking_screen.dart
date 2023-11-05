import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/screens/home/room_facilities.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/home/add_dates_screen.dart';
import 'package:bula/views/widgets/home/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_keys.dart';
import '../../widgets/home/property_widget.dart';

class BookingScreen extends StatelessWidget {
  final String type;

  const BookingScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        actions: [
          InkWell(
            onTap: () {
              Get.to(()=>const AddDatesScreen());
            },
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
                'add date',
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
                'add guests',
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
      body: Padding(
        padding: AppSizes.bodyAllPadding,
        child: Column(
          children: [
            if (type == "hotel")
              const PropertyWidget(imagesList: [
                AppKeys.kBed1,
                AppKeys.kBed2,
                AppKeys.kBed3,
              ], title: "Karabi")
            else
              const PropertyWidget(imagesList: [
                AppKeys.kBeach1,
                AppKeys.kBeach2,
                AppKeys.kBeach3,
              ], title: "Karabi"),
            const Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Divider(color: Color(0xFFD9D9D9)),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '3-9 September\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: '₹2,876',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ' night',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: ()=>Get.to(()=> const RoomFacilitiesScreen()),
                        child: Container(
                          width: 20.w,
                          height: 5.h,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2196F3),
                            shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 12,
                                offset: Offset(1, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Text(
                            'Book now',
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
