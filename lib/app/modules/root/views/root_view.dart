import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/modules/root/scroll_to_hide.dart';

import 'package:smart_manager/app/routes/app_pages.dart';

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
            child: controller.tabs[controller.selectedIndex.value],
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

              // margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(vertical: 10),
              items: [
                FloatingNavbarItem(
                  icon: Icons.home,
                ),
                FloatingNavbarItem(
                  icon: Icons.insert_drive_file_rounded,
                ),
                FloatingNavbarItem(
                  icon: Icons.alarm,
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

  List<Widget> get _widgets {
    return [
      Expanded(
        flex: 3,
        child: LottieBuilder.asset(
            "assets/animations/41068-man-filling-a-list.json"),
      ),
      Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
                child: Text("Home View"),
              ),
              MaterialButton(
                onPressed: () {
                  Get.toNamed(Routes.PROJECTS);
                },
                child: Text("Project View"),
              )
            ],
          ))
    ];
  }
}
