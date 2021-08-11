import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/global_widgets/sliver_persistance_header.dart';
import 'package:smart_manager/app/modules/projects/Widgets/add_task_button.dart';
import 'package:smart_manager/app/modules/projects/Widgets/catagory_list.dart';
import 'package:smart_manager/app/modules/projects/Widgets/task_tile.dart';
import 'package:smart_manager/app/modules/projects/controllers/project_details_controller.dart';

class ProjectDetailsView extends GetView<ProjectDetailsController> {
  final controller = Get.put(ProjectDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: controller.handleScrollNotification,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          controller: controller.scrollController,
          slivers: [
            SliverAppBar(
              leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back, color: Colors.black)),
              title: Text("Project", style: kAppBarTextStyle),
            ),
            SliverPersistentHeader(
                floating: true,
                pinned: true,
                delegate: PersistanceDelegate(
                  widget: CatagoryList(),
                  min: 70,
                  max: 80,
                )),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate((context, i) => TaskTile(),
                    childCount: 20),
                itemExtent: 125)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ScaleTransition(
        scale: controller.hideFabAnimation,
        alignment: Alignment.bottomCenter,
        child: AddTaskButton(
          callback: () {},
        ),
      ),
    );
  }
}
