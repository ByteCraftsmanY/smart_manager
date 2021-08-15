import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/modules/root/controllers/root_controller.dart';

class ScrollToHide extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final RootController controller = Get.find();
  ScrollToHide(
      {Key? key,
      required this.child,
      this.duration = const Duration(milliseconds: 500)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
          duration: duration,
          height: controller.isVisibleNavigationBar.value
              ? kBottomNavigationBarHeight + 25
              : 0,
          child: Wrap(children: [child]),
        ));
  }
}
