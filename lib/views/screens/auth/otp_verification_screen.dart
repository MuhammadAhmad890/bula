import 'package:bula/views/screens/auth/verification_successful_screen.dart';
import 'package:bula/views/widgets/auth/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/auth/otp_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final otp1 = TextEditingController();
    final otp2 = TextEditingController();
    final otp3 = TextEditingController();
    final otp4 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
            children: [
              Text(
                'Enter Verification Code',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Enter code that we have sent to your mobile  number ........705',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpFields(controller: otp1),
                  OtpFields(controller: otp2),
                  OtpFields(controller: otp3),
                  OtpFields(controller: otp4),
                ],
              ),
              SizedBox(height: 4.h),
              CustomButton(
                function: () {
                  Get.to(() => VerificationSuccessfulScreen());
                },
                name: "submit",
                isActive: false,
              ),
              SizedBox(height: 3.h),
              Text(
                'Resend code',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF289BF6),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.50,
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child:Image.asset(
              "assets/images/i_down.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              "assets/images/i_up.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
