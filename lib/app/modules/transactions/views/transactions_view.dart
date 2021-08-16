import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_manager/app/core/theme/appbar_theme.dart';
import 'package:smart_manager/app/global_widgets/sliver_persistance_header.dart';
import 'package:smart_manager/app/modules/transactions/widgets/search_bar.dart';
import 'package:smart_manager/app/modules/transactions/widgets/total_money_record_Header.dart';

import '../controllers/transactions_controller.dart';

class TransactionsView extends GetView<TransactionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: Get.find<RootController>().getNavigationScrollController,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              "Transactions",
              style: kAppBarTextStyle,
            ),
          ),
          SliverToBoxAdapter(
            child: GetReceiveIndicator(),
          ),
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate:
                  PersistanceDelegate(widget: SearchBar(), min: 90, max: 90)),
          SliverAnimatedList(
            initialItemCount: 50,
            itemBuilder: (context, i, animation) {
              return ContectTile();
            },
          ),
        ],
      ),
    );
  }
}
