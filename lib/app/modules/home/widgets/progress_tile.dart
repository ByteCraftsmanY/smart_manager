import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/data/model/task_model.dart';
import 'package:smart_manager/app/modules/projects/views/project_details_view.dart';

class ProgressTile extends StatelessWidget {
  final TaskModel model;
  const ProgressTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
        closedBuilder: (context, action) => Container(
              height: 100,
              margin: EdgeInsets.only(top: 15, left: 10, right: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.catagery,
                        style: kToDotileTextStyle,
                      ),
                      Text(
                        model.title,
                        style: kBigTextStyle,
                      ),
                      Text(
                        model.date,
                        style: kToDotileTextStyle,
                      ),
                    ],
                  ),
                  CircularPercentIndicator(
                    radius: 75,
                    animateFromLastPercent: true,
                    backgroundColor: kdisablePercentColor,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text(
                      "${model.completed * 10}%",
                      style: TextStyle(
                        color: Color(0xff65e596a),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    progressColor: kPercentageColor,
                    percent: model.completed.toDouble() / 10,
                  ),
                ],
              ),
            ),
        openBuilder: (context, action) => ProjectDetailsView());
  }
}
