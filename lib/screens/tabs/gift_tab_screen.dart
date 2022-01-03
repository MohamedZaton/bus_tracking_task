import 'package:bus_tracking_task/controllers/empty_controller.dart';
import 'package:bus_tracking_task/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftTabScreen extends GetView<EmptyController> {
  static const String id = "/gift_tab_screen";
  const GiftTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMTC')),
      body: Center(
        child: Container(
          child: const Text("Gift Tab"),
        ),
      ),
    );
  }
}
