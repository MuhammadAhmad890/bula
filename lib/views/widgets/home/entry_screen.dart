import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/home/select_amenities_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/constants/app_sizes.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: TableCalendar(
              headerStyle: HeaderStyle(titleCentered: true),
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime(2024),
              calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(color: Theme.of(context).primaryColor),
                  markerDecoration: BoxDecoration(color: Theme.of(context).primaryColor)),
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
                      onTap: () => Get.to(() => SelectAmenitiesScreen()),
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
          )),
    );
  }
}
