import 'package:bus_tracking_task/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTabScreen extends GetView<SearchController> {
  static const String id = "/search_screen";
  const SearchTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMTC')),
      body: Center(
        child: Container(
          child: const Text("Seach Tab"),
        ),
      ),
    );
  }
}
