import 'package:get/get.dart';

import '../controllers/mod_order_controller.dart';

class ModOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModOrderController>(
      () => ModOrderController(),
    );
  }
}
