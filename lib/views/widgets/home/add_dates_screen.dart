import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class AddDatesScreen extends StatelessWidget {
  const AddDatesScreen({super.key});

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
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD2AE6D)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Switch to user',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CupertinoSwitch(
                  value: true,
                  onChanged: (val) {},
                  activeColor: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            'Booked dates',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20)
            ),
            child: TableCalendar(
              headerStyle: HeaderStyle(
                titleCentered: true
              ),
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime(2024),
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Theme.of(context).primaryColor
                ),
                markerDecoration: BoxDecoration(
                  color: Theme.of(context).primaryColor
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
