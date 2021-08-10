import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:smart_manager/app/modules/home/controllers/home_controller.dart';

class ToDoCountRow extends StatelessWidget {
  const ToDoCountRow({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "To do",
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
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Obx(
            () => Text(
              controller.todo.toString(),
              style: TextStyle(
                color: Colors.pink,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
