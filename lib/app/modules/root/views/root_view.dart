import 'package:flutter/material.dart';

import 'package:animations/animations.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/modules/root/widgets/scroll_to_hide.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => PageTransitionSwitcher(
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
              return FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: RootController.tabs[controller.selectedIndex.value],
            // child: controller.tabs[controller.selectedIndex.value],
          )),
      bottomNavigationBar: Obx(
        () => ScrollToHide(
          child: Container(
            height: kBottomNavigationBarHeight + 25,
            color: Colors.transparent,
            child: FloatingNavbar(
              selectedBackgroundColor: Colors.transparent,
              unselectedItemColor: kBottamBarIconColor2,
              backgroundColor: kBottamBarColor,
              selectedItemColor: kBottamBarIconColor,
              elevation: 0,
              borderRadius: 20,
              padding: EdgeInsets.symmetric(vertical: 10),
              items: [
                FloatingNavbarItem(
                  icon: Icons.home,
                ),
                FloatingNavbarItem(
                  icon: Icons.insert_drive_file_rounded,
                ),
                FloatingNavbarItem(
                  icon: FontAwesomeIcons.solidStickyNote,
                ),
                FloatingNavbarItem(
                  icon: Icons.payment,
                ),
                FloatingNavbarItem(
                  icon: Icons.person_sharp,
                ),
              ],
              currentIndex: controller.selectedIndex.value,
              onTap: (v) => controller.selectedIndex.value = v,
            ),
          ),
        ),
      ),
    );
  }
}
