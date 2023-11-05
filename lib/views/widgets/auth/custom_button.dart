import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final Function function;
  final bool isActive;

  const CustomButton({
    super.key,
    required this.function,
    required this.name,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        height: 6.h,
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: isActive ? Color(0xFF2196F3) : Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(910),
          ),
        ),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isActive ? Colors.white : Color(0xFF757575),
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
