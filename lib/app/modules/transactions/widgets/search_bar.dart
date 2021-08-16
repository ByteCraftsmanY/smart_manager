import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_manager/app/core/theme/text_theme.dart';
import 'package:smart_manager/app/core/values/colors.dart';
import 'package:smart_manager/app/core/values/images.dart';
import 'package:smart_manager/app/modules/transactions/views/alltransections_view.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCanvasColor,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
              hintText: "Search",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.only(top: 10),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.ac_unit))),
    );
  }
}

class ContectTile extends StatelessWidget {
  const ContectTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => AlltransectionsView());
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(kUserImageAddress),
        backgroundColor: kBottamBarIconColor2,
        child: Text(""),
      ),
      title: Text("Dinesh Bhai"),
      subtitle: Text(
        "1 day ago",
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "\u{20B9} 100",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            "You will get",
            style: kToDotileTextStyle,
          ),
        ],
      ),
    );
  }
}

