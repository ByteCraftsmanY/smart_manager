import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_manager/app/core/values/lotties.dart';
import 'package:smart_manager/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: LottieBuilder.asset(kToDoAnimation),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.TRANSACTIONS);
                  },
                  icon: Icon(Icons.history),
                  label: Text("History"),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.PROFILE);
                  },
                  icon: Icon(Icons.person),
                  label: Text("Profile"),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.PROJECTS);
                  },
                  icon: Icon(Icons.task),
                  label: Text("Projects"),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.NOTES);
                  },
                  icon: Icon(Icons.note),
                  label: Text("Notes"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
