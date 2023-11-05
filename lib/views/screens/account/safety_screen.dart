import 'package:bula/views/screens/account/reporting_screen.dart';
import 'package:bula/views/widgets/account/facititiy_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../widgets/account/custom_back_button.dart';

class SafetyScreen extends StatelessWidget {
  const SafetyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyHorizontalPadding,
        children: [
          SizedBox(height: 4.h),
          InkWell(
            onTap: (){
              Get.to(()=>ReportingScreen());
            },
            child: const Text(
              'Safety & property',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            "Avoid surprises by looking over these important \n details about ur Host's propert",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'Safety considerations',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          FacilityWidget(text: "Heights without rails or protection", icon: Icons.warning_outlined),
          SizedBox(height: 2.h),
          Text(
            'Safety Devices',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          FacilityWidget(text: "Carbon monoxide alarm installed", icon: Icons.fire_hydrant_alt_outlined),
          Divider(thickness: 2),
          FacilityWidget(text: "Smoke alarm installed", icon: Icons.upcoming_outlined),
          SizedBox(height: 2.h),
          Text(
            'Property Info',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          FacilityWidget(text: "Some spaces are shared", icon: Icons.child_care),
          Divider(thickness: 2),
          FacilityWidget(text: "Pet(s) live on property", icon: Icons.pets_outlined),
          Divider(thickness: 2),
          FacilityWidget(text: "Must climb stairs", icon: Icons.elevator_outlined),
          Divider(thickness: 2),
        ],
      ),
    );
  }
}
