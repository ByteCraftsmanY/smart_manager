import 'package:flutter/material.dart';
import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';

class AmountTile extends StatelessWidget {
  final String text;
  final double amount;
  final Color color;
  const AmountTile({
    Key? key,
    required this.text,
    required this.amount,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: kCanvasColor, borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(15, 15, 5, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "\u{20B9}${amount.toString()}",
              style: kAppBarTextStyle.copyWith(
                fontSize: 28,
              ),
            ),
            Text(
              text,
              style: kAppBarTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
