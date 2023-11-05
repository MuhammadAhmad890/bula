import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AmenitiesWidget extends StatefulWidget {
  final IconData icon;
  final String name;

  const AmenitiesWidget({super.key, required this.icon, required this.name});

  @override
  State<AmenitiesWidget> createState() => _AmenitiesWidgetState();
}

class _AmenitiesWidgetState extends State<AmenitiesWidget> {
  bool isMarked = false;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        setState(() {
          isMarked = !isMarked;
        });
      },
      child: Container(
        height: 15.h,
        width: 40.w,
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        decoration: ShapeDecoration(
          color: isMarked ? const Color(0xFFEEEEEE) : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(widget.icon),
            Text(
              widget.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
