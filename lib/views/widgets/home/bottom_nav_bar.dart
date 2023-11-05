import 'package:flutter/cupertino.dart';

import '../../../controllers/widgets_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavBar extends GetView<WidgetsController> {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 10.h,
      padding: const EdgeInsets.symmetric(vertical: 5),
      shape: const CircularNotchedRectangle(),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.navigateTo(0);
                    },
                    icon: Icon(
                      Icons.home,
                      color: controller.navBarIndex.value == 0
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                    ),
                  ),
                  Text(
                    'home',
                    style: TextStyle(
                      color: controller.navBarIndex.value == 0
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.navigateTo(1);
                    },
                    icon: Icon(
                      Icons.favorite_border,
                      color: controller.navBarIndex.value == 1
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                    ),
                  ),
                  Text(
                    'Wishlist',
                    style: TextStyle(
                      color: controller.navBarIndex.value == 1
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  controller.navigateTo(2);
                },
                child: Container(
                  height: 15.w,
                  width: 15.w,
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, -0.02),
                      end: Alignment(-1, 0.02),
                      colors: [
                        Color(0xFF22BCFF),
                        Color(0xFF8BDCFF),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Icon(
                    CupertinoIcons.qrcode_viewfinder,
                    color: const Color(0xFFFCFEFF),
                    size: 10.w,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.navigateTo(3);
                      },
                      icon: Icon(
                        Icons.message,
                        color: controller.navBarIndex.value == 3
                            ? const Color(0xFF2196F3)
                            : const Color(0xFF738B96),
                      )),
                  Text(
                    'Inbox',
                    style: TextStyle(
                      color: controller.navBarIndex.value == 3
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.navigateTo(4);
                    },
                    icon: Icon(
                      Icons.person,
                      color: controller.navBarIndex.value == 4
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                    ),
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: controller.navBarIndex.value == 4
                          ? const Color(0xFF2196F3)
                          : const Color(0xFF738B96),
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
