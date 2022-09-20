import 'package:driver_app/app/modules/mod.navigation/views/components/navigation_map.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(Sizer(
    builder: (p0, p1, p2) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DRIVER APP",
      // initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: NavigationMapView(),
    ),
  ));
}
