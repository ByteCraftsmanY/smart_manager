import 'package:flutter/material.dart';

import 'package:smart_manager/app/core/values/colors.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        print("add task");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: kBottamBarIconColor,
      icon: Icon(Icons.add),
      label: Text(
        "New task",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
