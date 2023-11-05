import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationDetailsScreen extends StatefulWidget {
  const NotificationDetailsScreen({super.key});

  @override
  State<NotificationDetailsScreen> createState() => _NotificationDetailsScreenState();
}

class _NotificationDetailsScreenState extends State<NotificationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    bool value = true;
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          Icon(
            Icons.notifications_active_outlined,
            size: 15.w,
          ),
          SizedBox(height: 5.h),
          Text(
            'Trun On Notification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0.05,
            ),
          ),
          SizedBox(height: 7.h),
          Row(
            children: [
              Text(
                "Don't miss important messages like check-in \n details and account activity \n \n \n \n Get travel deals, personalised\n recommendations, and more",
                style: TextStyle(
                  color: Color(0xFF060C11),
                  fontSize: 12,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              CupertinoSwitch(
                activeColor: Theme.of(context).primaryColor,
                value: value,
                onChanged: (val) {
                  value = !value;
                  setState(() {});
                },
              ),

            ],
          ),
          SizedBox(height: 3.h),
          Container(
            height: 4.h,
            width: 10.w,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 70.w),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD2AE6D)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Skip',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Container(
            height: 4.h,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 67.w),
            decoration: ShapeDecoration(
              color: Color(0xFF2196F3),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 12,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Text(
              'Notify me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
