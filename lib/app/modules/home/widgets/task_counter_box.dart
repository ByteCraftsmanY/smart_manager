import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/modules/home/controllers/home_controller.dart';

class Task_counter_box extends StatelessWidget {
  const Task_counter_box({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(
        //   width: 0,
        //   color: Colors.black,
        // ),
        color: Color(0xff6f4bff),
        // image: DecorationImage(
        //     image: NetworkImage(kHomeImageAddress), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today",
            style: kLightText,
          ),
          Obx(
            () => RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: controller.completedTask.toString(),
                  style: kHeavyText,
                  children: [
                    TextSpan(
                      text: "/",
                    ),
                    TextSpan(
                      text: controller.totalTask.toString(),
                    ),
                    TextSpan(
                      text: " tasks",
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
