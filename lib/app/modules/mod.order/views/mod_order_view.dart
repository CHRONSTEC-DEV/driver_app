import 'package:carousel_slider/carousel_slider.dart';
import 'package:driver_app/app/modules/mod.order/views/components/order_card_go.dart';
import 'package:driver_app/app/themes/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/mod_order_controller.dart';
import 'components/order_card.dart';

class ModOrderView extends GetView<ModOrderController> {
  const ModOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      // width: 100.w,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          // CarouselCard(items: [
          //   for (int i = 1; i < 5; i++) const OrderCard(),
          // ]),
          OrderCardGo(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                    backgroundColor: AppColors.DAMBER1,
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.location_searching_rounded,
                          size: 28,
                          color: AppColors.DBLACK,
                        ))),
                CircleAvatar(
                    backgroundColor: AppColors.DAMBER1,
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.refresh,
                          size: 36,
                          color: AppColors.DBLACK,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
