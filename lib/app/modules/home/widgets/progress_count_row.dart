import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:smart_manager/app/modules/home/controllers/home_controller.dart';

class ProgressCountRow extends StatelessWidget {
  const ProgressCountRow({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "In progress",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            wordSpacing: 1,
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.orange[50],
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Obx(
            () => Text(
              controller.inProgress.toString(),
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
