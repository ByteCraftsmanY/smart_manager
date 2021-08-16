import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_manager/app/core/theme/appbar_theme.dart';

import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/modules/profile/widgets/user_profile.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: Get.find<RootController>().getNavigationScrollController,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              "Profile",
              style: kAppBarTextStyle,
            ),
            actions: [
              Padding(
                padding: kAppBarIconPadding.copyWith(top: 12),
                child: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: UserProfile(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 70,
                  decoration: BoxDecoration(
                    color: kdisablePercentColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
              childCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
