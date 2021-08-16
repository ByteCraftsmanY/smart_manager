import 'package:flutter/material.dart';


import 'package:smart_manager/app/data/model/to_do_model.dart';
import 'package:smart_manager/app/modules/home/widgets/to_do_tile.dart';

class ToDoListView extends StatelessWidget {
  const ToDoListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // CarouselSlider.builder
        ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, i /*, j*/) => ToDoTile(
        model: ToDoModel(
          catagery: "Internal",
          title: "Create New $i Page",
          date: " till 10 May 2021",
          description: "hi",
        ),
      ),
      // options: CarouselOptions(
      //   viewportFraction: Get.width / 1200,
      //   aspectRatio: 2,
      //   autoPlayCurve: Curves.fastOutSlowIn,
      //   autoPlay: true,
      //   autoPlayInterval: Duration(seconds: 10),
      //   pageSnapping: false,
      //   autoPlayAnimationDuration: Duration(seconds: 5),
      // ),
    );
  }
}
