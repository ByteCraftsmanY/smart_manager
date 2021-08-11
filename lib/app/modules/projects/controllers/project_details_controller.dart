import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

class ProjectDetailsController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController hideFabAnimation;
  late ScrollController scrollController;
  @override
  void onInit() {
    scrollController = ScrollController();
    hideFabAnimation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
      reverseDuration: Duration(milliseconds: 100),
    );
    hideFabAnimation.forward();
    super.onInit();
  }

  @override
  void onClose() {
    hideFabAnimation.dispose();
    scrollController.dispose();
    super.onClose();
  }

  bool handleScrollNotification(ScrollNotification notification) {
    if (notification.depth == 0) {
      if (notification is UserScrollNotification) {
        final UserScrollNotification userScroll = notification;
        if (scrollController.position.maxScrollExtent ==
            scrollController.position.pixels) {
          hideFabAnimation.forward();
          return true;
        }
        switch (userScroll.direction) {
          case ScrollDirection.forward:
            {
              // print("On reverse");
              if (userScroll.metrics.maxScrollExtent !=
                  userScroll.metrics.minScrollExtent) {
                hideFabAnimation.forward();
              }
              break;
            }
          case ScrollDirection.reverse:
            {
              // print("On forward");
              if (userScroll.metrics.maxScrollExtent !=
                  userScroll.metrics.minScrollExtent) {
                hideFabAnimation.reverse();
              }
              break;
            }
          case ScrollDirection.idle:
            {
              // print(" On Ideal");
              hideFabAnimation.forward();
              break;
            }
        }
      }
    }
    return false;
  }
}
