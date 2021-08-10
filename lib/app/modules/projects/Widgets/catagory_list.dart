import 'package:flutter/material.dart';

import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/modules/projects/Widgets/catagory_tile.dart';

class CatagoryList extends StatelessWidget {
  const CatagoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCanvasColor,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      height: 70,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) => CatagoryTile(),
        itemCount: 5,
      ),
    );
  }
}
