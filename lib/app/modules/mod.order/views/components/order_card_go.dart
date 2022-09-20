import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../routes/app_pages.dart';
import '../../../../themes/colors/app_colors.dart';
import '../../../../utils/floating_modal.dart';
import 'order_modal_info.dart';

class OrderCardGo extends StatelessWidget {
  const OrderCardGo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // color: ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_pin),
                const SizedBox(width: 10),
                Text("Carrefour Dunkan",
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.PRIMARY1,
                        fontSize: 16.sp)),
              ],
            ),
          ),
          // Container(
          //   width: 80.w,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const Icon(LineIcons.microphone),
          //       const SizedBox(width: 10),
          //       Text("Carrefour Dunkan",
          //           overflow: TextOverflow.fade,
          //           softWrap: false,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: AppColors.PRIMARY1,
          //               fontSize: 16.sp)),
          //     ],
          //   ),
          // ),
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: AppColors.DAMBER1,
                  radius: 25,
                  child: IconButton(
                      onPressed: () {
                        showFloatingModalBottomSheet(
                            context: context,
                            builder: (context) => const OrderModalInfo());
                      },
                      icon: const Icon(
                        Icons.article_outlined,
                        color: AppColors.DBLACK,
                      ))),
              const SizedBox(width: 50),
              FloatingActionButton.extended(
                backgroundColor: AppColors.PRIMARY1,
                elevation: 0,
                onPressed: () {},
                icon: const Icon(Icons.arrow_right_alt_rounded),
                label: Text("Commencer".toUpperCase()),
              )
            ],
          )
        ],
      ),
    );
  }
}
