import 'package:bula/utils/constants/app_keys.dart';
import 'package:bula/views/widgets/primay_label.dart';
import 'package:bula/views/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/home/bottom_nav_bar.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(5.w),
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryLabel(
                label: "Wish List",
              ),
              Text(
                'edit',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          SizedBox(height: 3.h),
          const WishlistCard(image: AppKeys.kBeach1),
          SizedBox(height: 3.h),
          const WishlistCard(image: AppKeys.kBeach2),
          SizedBox(height: 3.h),
          const WishlistCard(image: AppKeys.kBeach3),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
