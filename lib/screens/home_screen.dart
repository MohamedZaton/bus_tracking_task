import 'package:bus_tracking_task/controllers/home_controller.dart';
import 'package:bus_tracking_task/helper/constants.dart';
import 'package:bus_tracking_task/screens/tabs/search_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  static const String id = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMTC'),
        centerTitle: true,
        actions: const [Icon(Icons.person)],
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: SearchTabScreen.id,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: kMapTabIcon(), label: ""),
            BottomNavigationBarItem(icon: kCalenderTabIcon(), label: ""),
            BottomNavigationBarItem(icon: kWarningTabIcon, label: ""),
            BottomNavigationBarItem(icon: kGiftTabIcon(), label: ""),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.pink,
          onTap: controller.changePage,
        ),
      ),
    );
  }
}

// static const String id = "/home_screen";
