import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 2.h),
        ListTile(
          leading: Image.asset("assets/images/person.png"),
          title: const Text("Sayan dutta"),
          subtitle: const Text("India"),
          titleTextStyle: const TextStyle(
            color: Color(0xFF212529),
            fontSize: 8.57,
            fontFamily: 'Barlow',
            fontWeight: FontWeight.w600,
            letterSpacing: 0.60,
          ),
          subtitleTextStyle: const TextStyle(
            color: Color(0xFF677289),
            fontSize: 7.28,
            fontFamily: 'Barlow',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.22,
          ),
        ),
        SizedBox(height: 2.h),
        const Text(
          '“We stayed at the villa and our kids stayed at the salla rooms. It was amazing!!'
              ' The rooms are beautiful the resort is amazing.. the pool and the breakfast'
              ' also meet our expectations for a 5 stars resort.”',
          style: TextStyle(
            color: Color(0xFF677289),
            fontSize: 18,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
