import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FacilityWidget extends StatelessWidget {
  final bool isChecked;
  final IconData icon;
  final String text;

  const FacilityWidget({
    super.key,
    required this.text,
    required this.icon,
    this.isChecked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon),
            SizedBox(width: 5.w),
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )
          ],
        ),
        if (isChecked)
          Row(
            children: [
              Icon(CupertinoIcons.check_mark_circled),
              Icon(CupertinoIcons.xmark_circle)
            ],
          )
      ],
    );
  }
}
