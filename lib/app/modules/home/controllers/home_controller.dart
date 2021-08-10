import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt totalTask = 0.obs;
  RxInt completedTask = 0.obs;
  RxInt todo = 0.obs;
  RxInt inProgress = 0.obs;
  ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
