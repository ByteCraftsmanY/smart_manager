import 'package:flutter/material.dart';

class PersonMoneyRecordHeader extends StatelessWidget {
  const PersonMoneyRecordHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2, color: Colors.black45),
          bottom: BorderSide(width: 2, color: Colors.black45),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("get"), Text("give")],
      ),
    );
  }
}
