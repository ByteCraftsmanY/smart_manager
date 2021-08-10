import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/global_widgets/sliver_persistance_header.dart';
import 'package:smart_manager/app/modules/projects/Widgets/add_task_button.dart';
import 'package:smart_manager/app/modules/projects/Widgets/catagory_list.dart';
import 'package:smart_manager/app/modules/projects/Widgets/task_tile.dart';

class ProjectDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Project",
              style: kAppBarTextStyle,
            ),
          ),
          SliverPersistentHeader(
            floating: true,
            pinned: true,
            delegate:
                PersistanceDelegate(widget: CatagoryList(), max: 90, min: 70),
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, i) => TaskTile(),
                  childCount: 20),
              itemExtent: 100)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AddTaskButton(
        callback: () {},
      ),
    );
  }
}
