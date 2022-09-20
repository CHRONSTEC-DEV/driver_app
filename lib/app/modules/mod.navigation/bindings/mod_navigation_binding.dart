import 'package:get/get.dart';

import '../controllers/mod_navigation_controller.dart';

class ModNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModNavigationController>(
      () => ModNavigationController(),
    );
  }
}
