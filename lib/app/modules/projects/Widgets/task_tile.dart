import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 5, 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
          )
        ],
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "approv add banner ",
                style: kBigTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.calendar_today,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "till 21 may 2021",
                    style: kToDotileTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.brightness_1,
                color: kDotColor,
                size: 10,
              ),
              SizedBox(
                height: 2,
              ),
              Icon(
                Icons.supervised_user_circle,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
