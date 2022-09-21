import 'package:carousel_slider/carousel_slider.dart';
import 'package:driver_app/app/modules/mod.order/views/components/order_card_go.dart';
import 'package:driver_app/app/themes/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/mod_order_controller.dart';
import 'components/order_bottom_bar.dart';
import 'components/order_card.dart';
import 'components/order_card_end.dart';
import '../../mod.navigation/views/components/redirection_buttons.dart';

class ModOrderView extends GetView<ModOrderController> {
  const ModOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // CarouselCard(items: [
          //   for (int i = 1; i < 5; i++) const OrderCard(),
          // ]),
          // OrderCardGo(),
          OrderCardEnd(),
          OrderBottomBar(),
        ],
      ),
    );
  }
}
