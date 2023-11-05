import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/screens/account/hotel_rules_screen.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: InkWell(
        onTap: () => Get.to(() => const HotelRules()),
        child: ListView(
          padding: AppSizes.bodyAllPadding,
          children: [
            ListTile(
              title: const Text("Contact Sayan"),
              subtitle: const Text("typically respond with an hour"),
              trailing: Image.asset("assets/images/person.png"),
            ),
            const Divider(thickness: 2),
            SizedBox(height: 4.h),
            const Text(
              'Most travellers ask about',
              style: TextStyle(
                color: Color(0xFF1A2A34),
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 2.h),
            const Row(
              children: [
                Text(
                  'Getting there',
                  style: TextStyle(
                    color: Color(0xFF060C11),
                    fontSize: 12,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Expanded(child: SizedBox()),
                Icon(CupertinoIcons.chevron_down)
              ],
            ),
            SizedBox(height: 2.h),
            const Row(
              children: [
                Text(
                  'Price Availability',
                  style: TextStyle(
                    color: Color(0xFF060C11),
                    fontSize: 12,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Expanded(child: SizedBox()),
                Icon(CupertinoIcons.chevron_down)
              ],
            ),
            SizedBox(height: 2.h),
            const Divider(thickness: 2),
            SizedBox(height: 4.h),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'This home is available from 7—12 Apr.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Book',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 7.h,
        padding: AppSizes.bodyHorizontalPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Still have a quest ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
              ),
            ),
            Container(
              height: 5.h,
              width: 25.w,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: const Color(0xFF2196F3),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                'Message Host',
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
      ),
    );
  }
}
