
import 'package:bula/controllers/widgets_controller.dart';
import 'package:bula/views/screens/account/account_screen.dart';
import 'package:bula/views/screens/inbox/inbox_screen.dart';
import 'package:bula/views/screens/wishlist/wishlist_screen.dart';
import 'package:bula/views/screens/home/home_room_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<WidgetsController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (
      controller.navBarIndex.value == 0
      ) {
        return const HomeRoomScreen();
      }else if(controller.navBarIndex.value == 1){
        return const WishlistScreen();
      } else if(controller.navBarIndex.value == 3) {
        return const InboxScreen();
      }else {
        return const AccountScreen();
      }
    });
  }
}
