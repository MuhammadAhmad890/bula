import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
  import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/app_keys.dart';

class PropertyWidget extends StatelessWidget {
  final List<String> imagesList;
  final String title;

  const PropertyWidget({
    super.key,
    required this.imagesList,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Column(
      children: [
        SizedBox(
          height: 30.h,
          child: PageView.builder(
            itemCount: imagesList.length,
            controller: pageController,
            pageSnapping: true,
            onPageChanged: (index) {},
            itemBuilder: (context, pagePosition) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagesList[pagePosition],
                    fit: BoxFit.fill,
                  ));
            },
          ),
        ),
        SizedBox(height: 1.h),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const ExpandingDotsEffect(activeDotColor: Color(0xFF2196F3)),
            onDotClicked: (index) {},
          ),
        ),
        SizedBox(height: 1.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '$title\n',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: '1500+',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const TextSpan(
                    text: ' registered hotel and\nroom Waiting for you',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '3-9 September\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: '₹2,876',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' night',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                RatingBar.builder(
                  initialRating: 4,
                  itemSize: 3.w,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xFF2196F3),
                  ),
                  onRatingUpdate: (rating) {},
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
