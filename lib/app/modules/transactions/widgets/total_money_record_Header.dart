import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/modules/transactions/widgets/amount_tile.dart';

class GetReceiveIndicator extends StatelessWidget {
  const GetReceiveIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: Get.height * 0.22,
      decoration: BoxDecoration(
        color: kBottamBarIconColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          AmountTile(
            text: "You will get",
            amount: 100,
            color: Colors.green.shade200,
          ),
          AmountTile(
            text: "You will give",
            amount: 10,
            color: Colors.red.shade200,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

