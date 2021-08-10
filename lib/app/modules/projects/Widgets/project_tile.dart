import 'package:flutter/material.dart';

import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/data/model/task_model.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    Key? key,
    required this.modal,
    required this.callback,
  }) : super(key: key);

  final TaskModel modal;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: 180,
        margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xfff377b7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  "${modal.completed}/${modal.total} ",
                  style: kLightText,
                ),
                Icon(
                  Icons.brightness_1,
                  size: 4,
                  color: Colors.white,
                ),
                Text(
                  " ${((modal.total / modal.completed) * 100).toInt()}%",
                  style: kLightText,
                )
              ],
            ),
            Text(
              modal.title,
              style: kHeavyText,
            ),
          ],
        ),
      ),
    );
  }
}
