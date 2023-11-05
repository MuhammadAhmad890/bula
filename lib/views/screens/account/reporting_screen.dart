import 'package:bula/views/widgets/account/facititiy_widget.dart';
import 'package:bula/views/widgets/account/reporting_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../widgets/account/custom_back_button.dart';

class ReportingScreen extends StatelessWidget {
  const ReportingScreen({super.key});

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
          const Text(
            "Why are you reporting this listing?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2.h),
          const FacilityWidget(text: "This won't be shared with the Host.", icon: Icons.lock_outline),
          ReportingWidget(text: "It's inaccurate or incorrect"),
          ReportingWidget(text: "Itis not a real place to stay"),
          ReportingWidget(text: "It's a scam"),
          ReportingWidget(text: "It's offensive"),
          ReportingWidget(text: "It's something else"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: AppSizes.bodyAllPadding,
        child: ElevatedButton(onPressed: (){}, child: Text("Next"),),
      ),
    );
  }
}
