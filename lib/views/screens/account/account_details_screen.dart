import 'package:bula/utils/constants/app_sizes.dart';

import 'package:bula/views/widgets/auth/custom_text_field.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Account Details"),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Image.asset("assets/images/person.png"),
                Positioned(
                  top: 17.w,
                  left: 17.w,
                  child: Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      decoration: const ShapeDecoration(
                        color: Color(0x7FD9D9D9),
                        shape: OvalBorder(),
                      ),
                      child: const Icon(Icons.camera_alt_outlined)),
                )
              ],
            ),
          ),
          SizedBox(height: 3.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PERSONAL INFORMATION',
                style: TextStyle(
                  color: Color(0xFF1A2A34),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit_outlined,
                    color: Color(0xFF2670D4),
                    size: 15,
                  ),
                  Text(
                    'EDIT',
                    style: TextStyle(
                      color: Color(0xFF2670D4),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("First Name"),
                  SizedBox(height: 1.h),
                  SizedBox(
                    height: 10.h,
                    width: 40.w,
                    child: CustomTextField(
                      controller: firstNameController,
                      hintText: 'First Name',
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Last Name"),
                  SizedBox(height: 1.h),
                  SizedBox(
                    height: 10.h,
                    width: 40.w,
                    child: CustomTextField(
                      controller: lastNameController,
                      hintText: 'Last Name',
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 1.h),
          const Text("Email Address"),
          SizedBox(height: 1.h),
          SizedBox(
            height: 10.h,
            width: 40.w,
            child: CustomTextField(
              controller: emailController,
              hintText: 'Email Address',
              postFix: Container(
                margin: EdgeInsets.all(2.w),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFD2AE6D)),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.h),
          const Text("Phone Number"),
          SizedBox(height: 1.h),
          SizedBox(
            height: 10.h,
            width: 40.w,
            child: CustomTextField(
              controller: phoneController,
              hintText: 'Phone Number',
              postFix: Container(
                margin: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: const Color(0xD2AE6D80).withOpacity(0.5)),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: ShapeDecoration(
              color: const Color(0x7FD2AE6D),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              title: const Text(
                "Delete Account",
              ),
              subtitle: const Text("Delete Account Permanently"),
              titleTextStyle: const TextStyle(
                color: Color(0xFF1A2A34),
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
              ),
              subtitleTextStyle: const TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
