import 'package:bula/views/screens/account/my_profile_page.dart';
import 'package:bula/views/widgets/account/about_button.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';

class CustomSupportScreen extends StatelessWidget {
  const CustomSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("24*7 Customer Support"),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyHorizontalPadding,
        children: [
          SizedBox(height: 2.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Get quick customer support by selecting your booking',
                  softWrap: true,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              InkWell(
                onTap: ()=>Get.to(()=>const MyProfilePage()),
                child: Icon(
                  Icons.headphones,
                  size: 15.w,
                ),
              )
            ],
          ),
          Padding(
            padding: AppSizes.bodyAllPadding,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/beach1.png",
                        fit: BoxFit.fill,
                        height: 15.h,
                        width: 40.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Karabi\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'hotel and room',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '12',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' September\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: 'booked',
                            style: TextStyle(
                              color: Color(0xFF2196F3),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: AppSizes.bodyAllPadding,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/beach2.png",
                        fit: BoxFit.fill,
                        height: 15.h,
                        width: 40.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Karabi\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'hotel and room',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '20',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' November\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: 'booked',
                            style: TextStyle(
                              color: Color(0xFF2196F3),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            'What type of issue are you facing ?',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          AboutButton(
              title: "I want to manage my booking",
              subtitle: "View cancel or refund your booking",
              onTrailTap: () {}),
          AboutButton(
              title: "I want help with refund",
              subtitle: "manage and tracks refund",
              onTrailTap: () {}),
          AboutButton(
              title: "I want help with other issues",
              subtitle: "I want help with other issues",
              onTrailTap: () {}),
        ],
      ),
    );
  }
}
