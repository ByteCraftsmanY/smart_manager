import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.fade,
      theme: ThemeData(
        canvasColor: kCanvasColor,
        appBarTheme: kAppBarThemeData,
      ),
    ),
  );
}
