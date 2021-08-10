import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RootView'),
          centerTitle: true,
        ),
        body: Center(
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
          ),
        ));
  }
}
