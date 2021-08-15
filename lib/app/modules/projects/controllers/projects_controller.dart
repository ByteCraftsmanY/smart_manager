import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

class ProjectsController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxBool isShowFAB = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    scrollController.dispose();
  }
}
