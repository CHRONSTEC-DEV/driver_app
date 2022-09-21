import 'package:driver_app/app/modules/mod.navigation/views/map_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../common/controllers.dart';
import '../../mod.navigation/views/components/redirection_buttons.dart';
import '../../mod.navigation/views/mod_navigation_view.dart';
import '../../mod.order/views/mod_order_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ctlHome.ghomeKey,
      body: SafeArea(
        child: Stack(
          children: const [
            MapUiBody(),
            RedirectionButtons(),
            // const Align(
            //     alignment: Alignment.bottomCenter, child: ModOrderView()),
          ],
        ),
      ),
    );
  }
}
