import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.35,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 30,
          ),
          Material(
            shape: CircleBorder(),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBottamBarColor,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://373819-1169963-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2016/07/marcus.jpg"),
                ),
              ),
              height: Get.height * 0.2,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Yogesh",
            style: kBigTextStyle.copyWith(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
