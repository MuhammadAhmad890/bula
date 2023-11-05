import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/account/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2.42.129 Reviews"),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 10,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.transparent)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.transparent)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Communication',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
              )),
              SizedBox(width: 3.w),
              const Text(
                '4.9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Check-In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
              )),
              SizedBox(width: 3.w),
              const Text(
                '4.9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Cleanliness',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
              )),
              SizedBox(width: 3.w),
              const Text(
                '4.9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Accuracy',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
              )),
              SizedBox(width: 3.w),
              const Text(
                '4.9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
              )),
              SizedBox(width: 3.w),
              const Text(
                '4.9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.w),
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Value',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.black,
                thickness: 2,
              )),
              SizedBox(width: 3.w),
              const Text(
                '4.9',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 4.h),
          const ReviewWidget(),
          const ReviewWidget(),
          const ReviewWidget(),
        ],
      ),
    );
  }
}
