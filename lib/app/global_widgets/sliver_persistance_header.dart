import 'package:flutter/material.dart';

class PersistanceDelegate extends SliverPersistentHeaderDelegate {
  final Widget widget;
  final double min, max;

  PersistanceDelegate(
      {required this.widget, required this.min, required this.max});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
