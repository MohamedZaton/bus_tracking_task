import 'package:bus_tracking_task/controllers/map_controller.dart';
import 'package:bus_tracking_task/controllers/search_controller.dart';
import 'package:bus_tracking_task/screens/home_screen.dart';
import 'package:bus_tracking_task/screens/map_screen.dart';
import 'package:bus_tracking_task/screens/tabs/search_tab_screen.dart';
import 'package:bus_tracking_task/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus Tracking system',
      theme: buildLightTheme(),
      initialRoute: HomeScreen.id,
      getPages: [
        /// home page
        GetPage(
          name: HomeScreen.id,
          page: () => const HomeScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut<HomeController>(() => HomeController());
          }),
        ),

        /// Map page
        GetPage(
          name: MapDetailsScreen.id,
          page: () => const MapDetailsScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut<MapController>(() => MapController());
          }),
        ),
      ],
    );
  }
}
