import 'package:flutter/material.dart';

import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/data/model/to_do_model.dart';

class ToDoTile extends StatelessWidget {
  final ToDoModel model;
  const ToDoTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          height: 140,
          width: 130,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kToDoTileColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.catagery,
                style: kToDotileTextStyle,
              ),
              SizedBox(
                height: 1,
              ),
              Flexible(
                child: Container(
                  child: Text(
                    model.title,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  Icon(
                    Icons.brightness_1,
                    color: kDotColor,
                    size: 10,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Flexible(
                    child: Container(
                      child: Text(
                        model.date,
                        style: kToDotileTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
