import 'package:bula/views/widgets/home/amenities_check.dart';
import 'package:bula/views/widgets/home/filters_tile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../widgets/account/custom_back_button.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: const Text("Filters"),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          SizedBox(height: 2.h),
          const Text(
            'Price range',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2.h),
          const Text(
            'The average nightly price is \$ 1600',
            style: TextStyle(
              color: Color(0xFF060C11),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(height: 2.h),
          Image.asset("assets/images/price-range.png"),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 30.w,
                height: 9.h,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFD2AE6D)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'minimum',
                      style: TextStyle(
                        color: Color(0xFF060C11),
                        fontSize: 12,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 44,
                      child: Text(
                        '\$ 357',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                  child: Divider(
                thickness: 2,
                color: Color(0xFFD2AE6D),
              )),
              Container(
                width: 30.w,
                height: 9.h,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFD2AE6D)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'maximum',
                      style: TextStyle(
                        color: Color(0xFF060C11),
                        fontSize: 12,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '\$ 6886',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          const Text(
            'Type of place',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          ListTile(
            title: const Text("Entire Place"),
            subtitle: const Text("A place all to yours"),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
            subtitleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
            trailing: Checkbox(value: false, onChanged: (bool? value) {}),
          ),
          ListTile(
            title: const Text("Room"),
            subtitle: const Text("Your own room, plus access to shared spaces"),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
            subtitleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
            trailing: Checkbox(value: false, onChanged: (bool? value) {}),
          ),
          ListTile(
            title: const Text("Shared Room"),
            subtitle:
                const Text("A sleeping space and common areas that may be shared with others"),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
              height: 0.10,
            ),
            subtitleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
            trailing: Checkbox(value: false, onChanged: (bool? value) {}),
          ),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Rooms and beds',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          const Text(
            'Bedrooms',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor),
                child: const Text("Any"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("1"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("2"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("3"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("4"),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          const Text(
            'Beds',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor),
                child: const Text("Any"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("1"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("2"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("3"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("4"),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          const Text(
            'Bathroom',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor),
                child: const Text("Any"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("1"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("2"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("3"),
              ),
              Container(
                height: 5.h,
                width: 9.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xFFD2AE6D)),
                ),
                child: const Text("4"),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Property Type',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Container(
                width: 35.w,
                height: 35.w,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFD2AE6D))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.home_outlined,
                    ),
                    SizedBox(height: 1.h),
                    const Text("Home")
                  ],
                ),
              ),
              Container(
                width: 35.w,
                height: 35.w,
                margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFD2AE6D))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.apartment_outlined,
                    ),
                    SizedBox(height: 1.h),
                    const Text("Apartment")
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 35.w,
                height: 35.w,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFD2AE6D))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.house_outlined,
                    ),
                    SizedBox(height: 1.h),
                    const Text("Guest House")
                  ],
                ),
              ),
              Container(
                width: 35.w,
                height: 35.w,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFD2AE6D))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.store_outlined,
                    ),
                    SizedBox(height: 1.h),
                    const Text("Hotel")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Amenities',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
      SizedBox(height: 2.h),
          const Text(
            'Essentials',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Wifi"),
          const AmenitiesCheck(name: "Kitchen"),
          const AmenitiesCheck(name: "Washing Machine"),
          const AmenitiesCheck(name: "Dryer"),
          const AmenitiesCheck(name: "Air conditioner"),
          const AmenitiesCheck(name: "Heater"),
          const AmenitiesCheck(name: "Hair Dryer"),
          const AmenitiesCheck(name: "Tv"),
          const AmenitiesCheck(name: "Iron  "),
          const Text(
            'Features',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Pool"),
          const AmenitiesCheck(name: "Hot Tub"),
          const AmenitiesCheck(name: "Free Parking"),
          const AmenitiesCheck(name: "Ev changer"),
          const AmenitiesCheck(name: "Indoor Fireplace"),
          const AmenitiesCheck(name: "Gym trainer"),
          const Text(
            'Location',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Beach Front"),
          const AmenitiesCheck(name: "Water Front"),
          const AmenitiesCheck(name: "Fire Alarm"),
          const AmenitiesCheck(name: "Carbon monoxide alarm"),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Amenities',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const FiltersTile(title: "Instant Book", subtitle: Text("Book without waiting for the host to respond"),),
          const FiltersTile(title: "Self Check-in", subtitle: Text("Easy Access to property once you arrive")),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Accessibility Feature',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Step free guest entrance"),
          const AmenitiesCheck(name: "Guest entrance wider than 32 inches(81 centimeter)"),
          const AmenitiesCheck(name: "Step free path to guest entrance"),
          const AmenitiesCheck(name: "Accessible Parking spot"),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Bedroom',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Step free bedroom entrance"),
          const AmenitiesCheck(name: "Guest entrance wider than 32 inches(81 centimeter)"),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Bathroom',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Step free bathroom entrance"),
          const AmenitiesCheck(name: "Guest entrance wider than 32 inches(81 centimeter)"),
          const AmenitiesCheck(name: "Shower grab bar"),
          const AmenitiesCheck(name: "Toilet grab bar"),
          const AmenitiesCheck(name: "Step free shower"),
          const AmenitiesCheck(name: "Shower on bath chair"),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Adaptive Equipment',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Ceiling for mobile hoist"),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Top tier stays',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const FiltersTile(title: "Allows pet", subtitle: Text("Bringing a service animal", style: TextStyle(decoration: TextDecoration.underline),),),
          const FiltersTile(title: "Super host", subtitle: Text("Stay with recognized host"),),
          SizedBox(height: 2.h),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
          SizedBox(height: 2.h),
          const Text(
            'Languages',
            style: TextStyle(
              color: Color(0xFF1A2A34),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const AmenitiesCheck(name: "Englis"),
          const AmenitiesCheck(name: "French"),
          const AmenitiesCheck(name: "German"),
          const AmenitiesCheck(name: "Japanese"),
          const AmenitiesCheck(name: "Italian"),
          const AmenitiesCheck(name: "Russian"),
          const AmenitiesCheck(name: "Spanish"),
          const AmenitiesCheck(name: "Arabic"),
          const AmenitiesCheck(name: "Hindi"),
          const AmenitiesCheck(name: "Indonesian"),
          const AmenitiesCheck(name: "Dutch"),
          const AmenitiesCheck(name: "Bengali"),
          const Divider(thickness: 2, color: Color(0xFFD9DDE1)),
        ],
      ),
    );
  }
}
