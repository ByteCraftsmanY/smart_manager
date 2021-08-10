import 'package:flutter/material.dart';
import 'package:smart_manager/app/core/theme/text_theme.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "approv add banner",
            style: kBigTextStyle,
          ),
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Spacer(),
              Icon(Icons.youtube_searched_for),
            ],
          ),
        ],
      ),
    );
  }
}
