import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notes_controller.dart';

class NotesView extends GetView<NotesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NotesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
