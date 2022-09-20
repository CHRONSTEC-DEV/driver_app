import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mod.navigation/bindings/mod_navigation_binding.dart';
import '../modules/mod.navigation/views/mod_navigation_view.dart';
import '../modules/mod.order/bindings/mod_order_binding.dart';
import '../modules/mod.order/views/mod_order_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MOD_NAVIGATION,
      page: () => const ModNavigationView(),
      binding: ModNavigationBinding(),
    ),
    GetPage(
      name: _Paths.MOD_ORDER,
      page: () => const ModOrderView(),
      binding: ModOrderBinding(),
    ),
  ];
}
