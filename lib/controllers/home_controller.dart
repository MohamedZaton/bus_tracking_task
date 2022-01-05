import 'package:bus_tracking_task/controllers/empty_controller.dart';
import 'package:bus_tracking_task/controllers/search_controller.dart';
import 'package:bus_tracking_task/screens/tabs/gift_tab_screen.dart';
import 'package:bus_tracking_task/screens/tabs/map_tab_screen.dart';
import 'package:bus_tracking_task/screens/tabs/search_tab_screen.dart';
import 'package:bus_tracking_task/screens/tabs/warning_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  var currentIndex = 0.obs;
  final pages = <String>[
    MapTabScreen.id,
    SearchTabScreen.id,
    WarningTabScreen.id,
    GiftTabScreen.id,
  ];
  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == MapTabScreen.id) {
      return GetPageRoute(
        settings: settings,
        page: () => MapTabScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut<EmptyController>(() => EmptyController());
        }),
      );
    }

    if (settings.name == SearchTabScreen.id) {
      return GetPageRoute(
        settings: settings,
        page: () => const SearchTabScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut<SearchController>(() => SearchController());
        }),
      );
    }

    if (settings.name == WarningTabScreen.id) {
      return GetPageRoute(
        settings: settings,
        page: () => const WarningTabScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut<EmptyController>(() => EmptyController());
        }),
      );
    }

    if (settings.name == GiftTabScreen.id) {
      return GetPageRoute(
        settings: settings,
        page: () => const GiftTabScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut<EmptyController>(() => EmptyController());
        }),
      );
    }
    return null;
  }
}
