import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/data/model/task_model.dart';
import 'package:smart_manager/app/modules/projects/Widgets/project_tile.dart';
import 'package:smart_manager/app/modules/projects/views/project_details_view.dart';

import '../controllers/projects_controller.dart';

class ProjectsView extends GetView<ProjectsController> {
  final controller = Get.put(ProjectsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: Get.find<RootController>().getNavigationScrollController,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: kCanvasColor,
            floating: true,
            title: Text(
              "Projects",
              style: kAppBarTextStyle,
            ),
            actions: [
              Padding(
                padding: kAppBarIconPadding,
                child: Icon(Icons.search, color: Colors.black),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => ProjectTile(
                modal: TaskModel(
                    catagery: "SuperApp",
                    date: "",
                    description: "",
                    title: "Superapp",
                    total: 10,
                    completed: 5),
                callback: () => Get.to(() => ProjectDetailsView()),
              ),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
