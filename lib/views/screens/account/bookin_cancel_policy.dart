import 'package:bula/views/screens/account/amenities_screen.dart';
import 'package:bula/views/screens/account/reviews_screen.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_sizes.dart';

class BookingCancelPolicy extends StatelessWidget {
  const BookingCancelPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Cancel Policy"),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyAllPadding,
        children: [
          const Text(
            'Legal terms',
            style: TextStyle(
              color: Color(0xFF060C11),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4.h),
          InkWell(
            onTap: () => Get.to(() => AmenitiesScreen()),
            child: const Text(
              'App privacy policy',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          InkWell(
            onTap: () => Get.to(() => const ReviewsScreen()),
            child: const Text(
              'Booking Cancel Policy for Indian user',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          const SizedBox(
            width: 325,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Hotel cancellation policies offer hotel guests the opportunity to cancel their booking up until a certain amount of days before check-in. Once this date has passed, the hotel might charge the guest a set cancellation fee, a percentage of the booking, or the full amount.\nA booking cancellation policy serves two main functions:\n',
                    style: TextStyle(
                      color: Color(0xFF060C11),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text:
                        'It holds guests accountable, and ensures that they only book a hotel room when they actually intend to stay (rather than booking a room ‘just in case’, or reserving two options for the same date).\nIt helps to reduce the number of no-shows, ensuring that a hotel doesn’t lose too much revenue from avoidable vacancies.\n',
                    style: TextStyle(
                      color: Color(0xFF060C11),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text:
                        'The importance of having a clear booking cancellation policy\nYour booking cancellation policy must be made crystal clear during the hotel reservation process. Your cancellation policy is essentially a legal document – if it is vague, incorrect or offers any wiggle room, resourceful guests may find loopholes and leave you out of pocket.\nBut while your hotel booking cancellation policy needs to be legally sound, it can’t be written in lengthy legalese. Your average guest needs to understand it easily, and the most important terms – the timeframes and applicable cancellation fees – need to be displayed clearly.\nTypes of hotel cancellation policies\nAs a hotelier, you have the choice of a number of different cancellation policy options. Ten of the most common include:\n1. Free cancellation policy\nThree decades ago free cancellations of reservations in hotels were common, but they are now a rarity, as the internet has made it far quicker and easier to book a hotel, which has increased instances of travellers making bookings ‘just in case’.\n2. Non-refundable policy\nSitting at the opposite end of the spectrum, a non-refundable cancellation policy takes full payment from the customer. Hotels may choose to implement this policy when a guest decides to cancel particularly late, such as in the 24 hours ',
                    style: TextStyle(
                      color: Color(0xFF060C11),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'before check in',
                    style: TextStyle(
                      color: Color(0xFF060C11),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text:
                        '.\n3. Partially refundable policy\nMore common than non-refundable policies, partial refund policies see the guest refunded a percentage of the total reservation value in the days leading up to their stay. This percentage may decrease as check-in approaches.',
                    style: TextStyle(
                      color: Color(0xFF060C11),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
