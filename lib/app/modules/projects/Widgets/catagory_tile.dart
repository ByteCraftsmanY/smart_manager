import 'package:flutter/material.dart';

import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';

class CatagoryTile extends StatelessWidget {
  const CatagoryTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 80,
      margin: EdgeInsets.only(left: 15),
      padding: EdgeInsets.all(2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kBottamBarColor,
      ),
      child: Text(
        "All",
        style: kInactiveText,
      ),
    );
  }
}
