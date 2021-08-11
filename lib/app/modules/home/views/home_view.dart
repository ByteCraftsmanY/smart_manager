import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/data/model/task_model.dart';
import 'package:smart_manager/app/modules/home/widgets/progress_count_row.dart';
import 'package:smart_manager/app/modules/home/widgets/progress_tile.dart';
import 'package:smart_manager/app/modules/home/widgets/task_counter_box.dart';
import 'package:smart_manager/app/modules/home/widgets/todo_count_row.dart';
import 'package:smart_manager/app/modules/home/widgets/todo_list_view.dart';
import 'package:smart_manager/app/modules/root/controllers/root_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        controller: Get.find<RootController>().getNavigationScrollController,
        slivers: [
          SliverAppBar(
            floating: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Hello, Yogesh",
              style: kAppBarTextStyle,
            ),
            actions: [
              Padding(
                padding: kAppBarIconPadding,
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Task_counter_box(controller: controller),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: ToDoCountRow(controller: controller),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 145,
              child: ToDoListView(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: ProgressCountRow(controller: controller),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) {
                return ProgressTile(
                  model: TaskModel(
                      catagery: "SMM",
                      date: "2 Hours",
                      description: "Ji",
                      completed: i + 4,
                      total: 4,
                      title: "Create new blog post"),
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
