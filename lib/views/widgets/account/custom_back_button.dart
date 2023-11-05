import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        width: 2.w,
        height: 2.w,
        margin: EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 12,
              offset: Offset(1, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Icon(CupertinoIcons.back),
      ),
    );
  }
}
