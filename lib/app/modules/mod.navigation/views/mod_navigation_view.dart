import 'package:driver_app/app/modules/mod.navigation/views/components/navigation_map.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../common/controllers.dart';
import '../controllers/mod_navigation_controller.dart';
import 'map_ui.dart';

class ModNavigationView extends GetView<ModNavigationController> {
  const ModNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapUiBody(),
    );
  }
}
