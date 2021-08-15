import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/modules/home/views/home_view.dart';
import 'package:smart_manager/app/modules/notes/views/notes_view.dart';
import 'package:smart_manager/app/modules/profile/views/profile_view.dart';
import 'package:smart_manager/app/modules/projects/views/projects_view.dart';
import 'package:smart_manager/app/modules/transactions/views/transactions_view.dart';

class RootController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool isVisibleNavigationBar = true.obs;
  static List<Widget> tabs = [
    HomeView(),
    ProjectsView(),
    NotesView(),
    TransactionsView(),
    ProfileView(),
  ];
  late ScrollController _scrollController;
  get getNavigationScrollController => _scrollController;
  void show() => isVisibleNavigationBar.value = true;
  void hide() => isVisibleNavigationBar.value = false;
  void listen() {
    try {
      var direction = _scrollController.position.userScrollDirection;
      if (direction == ScrollDirection.forward)
        show();
      else if (direction == ScrollDirection.reverse) hide();
    } catch (e) {}
  }

  @override
  void onInit() {
    _scrollController = ScrollController();
    _scrollController.addListener(listen);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _scrollController.dispose();
    _scrollController.removeListener(listen);
  }
}
