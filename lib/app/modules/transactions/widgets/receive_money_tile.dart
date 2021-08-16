import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReceivedMoneyTile extends StatelessWidget {
  const ReceivedMoneyTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.fromLTRB(100, 15, 20, 15),
        padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(1),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(15),
            //   child: Container(
            //     height: 50,
            //     width: 50,
            //     decoration: BoxDecoration(
            //         gradient: RadialGradient(
            //             colors: [Colors.green, Colors.yellow]),
            //         color: Colors.black12,
            //         image: DecorationImage(
            //             image: NetworkImage(
            //               "https://i1.wp.com/www.justrechargenow.com/wp-content/uploads/2018/06/precash_bill_logo.133141831.jpg?fit=617%2C486&ssl=1",
            //             ),
            //             fit: BoxFit.fill,
            //             colorFilter: ColorFilter.mode(
            //                 Colors.black54, BlendMode.lighten)),
            //         borderRadius: BorderRadius.circular(10)),
            //   ),
            // ),
            //
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\u{20B9} ${100}",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    "${DateFormat.yMMMMd().add_jm().format(DateTime.now())}")
              ],
            ),
          ],
        ),
      );
  }
}
