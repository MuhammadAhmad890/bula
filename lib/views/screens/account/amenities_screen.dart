import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:bula/views/widgets/account/facititiy_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';

class AmenitiesScreen extends StatelessWidget {
  final bool isChecked;

  AmenitiesScreen({super.key, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amenities"),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          SizedBox(height: 4.h),
          const Text(
            'Scenic views',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          FacilityWidget(
            text: "Garden view",
            icon: Icons.yard_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Valley view",
            icon: Icons.landscape_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Park view",
            icon: Icons.park_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Bathroom',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          FacilityWidget(
            text: "Cleaning Products",
            icon: Icons.cleaning_services_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Shampoo",
            icon: Icons.sanitizer_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Conditioner",
            icon: Icons.sanitizer_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Body Soap",
            icon: Icons.soap_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Hot Water",
            icon: Icons.water_drop_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Shower Gel",
            icon: Icons.shower_outlined,
            isChecked: isChecked,
          ),
          SizedBox(height: 4.h),
          const Text(
            'Bedroom and  laundry',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          FacilityWidget(
            text: "Essentials",
            icon: Icons.bathroom_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Hanger",
            icon: Icons.table_restaurant_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Bed Linen",
            icon: Icons.bed_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Extra Pillow and Blankets",
            icon: Icons.dehaze_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Entertainment',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          FacilityWidget(
            text: "Submarine Sound System",
            icon: Icons.surround_sound_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Games Console",
            icon: Icons.gamepad_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Bed Linen",
            icon: Icons.bed_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          FacilityWidget(
            text: "Books and Reading Material",
            icon: Icons.book_outlined,
            isChecked: isChecked,
          ),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Heating and cooling',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(text: "Portable fans", icon: Icons.wind_power_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Books and reading material", icon: CupertinoIcons.book),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Family',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(
              text: "Children's book and toys", icon: Icons.baby_changing_station),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Safety consideration',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(
              text: "Heights without rail and protection", icon: Icons.error_outline),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Safety Devices',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(
              text: "Carbon Monoxide alarm installed", icon: Icons.fire_hydrant_alt_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Smoke alarm install", icon: Icons.fire_truck_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Kitchen and dining',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(text: "Mini Fridge Refrigerator", icon: Icons.kitchen_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Microwave", icon: Icons.microwave_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Dishes and silverware", icon: Icons.disc_full_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(
              text: "Coffee maker : cafeteria", icon: Icons.coffee_maker_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Toaster", icon: Icons.breakfast_dining_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Wine glass", icon: Icons.wine_bar_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Outdoor',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(
              text: "Private patio or balcony", icon: Icons.camera_outdoor_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Private back garden", icon: Icons.yard_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Outdoor Furniture", icon: Icons.chair_alt_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 4.h),
          const Text(
            'Not Included',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          const FacilityWidget(text: "Kitchen", icon: Icons.soup_kitchen_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Wifi", icon: Icons.network_check),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Tv", icon: Icons.tv_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Washing machine", icon: Icons.waving_hand_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Air conditioner", icon: Icons.air_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          const FacilityWidget(text: "Hair dryer", icon: Icons.dry_outlined),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
        ],
      ),
    );
  }
}
