import 'package:get/get.dart';

import '../controllers/mod_order_detail_controller.dart';

class ModOrderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModOrderDetailController>(
      () => ModOrderDetailController(),
    );
  }
}
