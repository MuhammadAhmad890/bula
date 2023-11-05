import 'package:bula/views/widgets/auth/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerificationSuccessfulScreen extends StatelessWidget {
  const VerificationSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 23.h),
                const Text(
                  'Account Verified',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3.h,),
                const Text(
                  'Your account has been verified successfully.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                  ),
                ),
                SizedBox(height: 10.h,),
                CustomButton(
                  function: () {},
                  name: "Get Started",
                ),
              ],
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset("assets/images/rounded.png",
              fit: BoxFit.fill,),),
          Positioned(
              top: 5.h,
              right: 0,
              left: 0,
              child: Image.asset("assets/images/polygon.png",
              ),),
          Positioned(
              top: 9.h,
              right: 0,
              left: 0,
              child: Image.asset("assets/images/alert.png",
              ),),

        ],
      ),
    );
  }
}
