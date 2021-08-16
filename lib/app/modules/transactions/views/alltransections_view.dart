import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_manager/app/global_widgets/app_bar_button.dart';
import 'package:smart_manager/app/global_widgets/sliver_persistance_header.dart';
import 'package:smart_manager/app/modules/transactions/controllers/transactions_controller.dart';
import 'package:smart_manager/app/modules/transactions/widgets/person_money_record_header.dart';
import 'package:smart_manager/app/modules/transactions/widgets/person_profile.dart';
import 'package:smart_manager/app/modules/transactions/widgets/receive_money_tile.dart';
import 'package:smart_manager/app/modules/transactions/widgets/send_money_tile.dart';

class AlltransectionsView extends GetView<TransactionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: AppBarButton(
                  icon: CupertinoIcons.back, callback: () => Get.back()),
            ),
            expandedHeight: Get.height * 0.4,
            flexibleSpace: PersonProfile(),
          ),
          SliverPersistentHeader(
              floating: true,
              delegate: PersistanceDelegate(
                  max: 100, min: 100, widget: PersonMoneyRecordHeader())),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, i) =>
                    i % 2 == 0 ? SendMoneyTile() : ReceivedMoneyTile(),
                childCount: 100),
          )
        ],
      ),
    );
  }
}
