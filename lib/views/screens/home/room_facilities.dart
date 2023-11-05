import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/home/quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/home/guest_facilities_screen.dart';

class RoomFacilitiesScreen extends StatelessWidget {
  const RoomFacilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          const Text(
            'Available room in this hotel',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0.05,
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 12,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Column(
              children: [
                QuantityWidget(subtitle: "Only two People allowed", title: "Single Bed"),
                QuantityWidget(subtitle: "Only Four People allowed", title: "Two Queen Size Bed"),
                QuantityWidget(subtitle: "Four People and two children", title: "One King Size \nOne Queen Size Bed "),
                QuantityWidget(subtitle: "4+ People allowed", title: "Two King Size Bed"),
                QuantityWidget(subtitle: "Guest with pet allowed", title: "Vip Room"),
              ],
            ),
          )
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
                    Text(
                      'clear',
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
                      onTap: ()=>Get.to(()=> const GuestFacilitiesScreen()),
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
          )
      ),
    );

  }
}
