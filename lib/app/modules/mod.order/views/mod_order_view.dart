import 'package:driver_app/app/themes/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/mod_order_controller.dart';

class ModOrderView extends GetView<ModOrderController> {
  const ModOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 18.h,
        decoration: BoxDecoration(
            // color: AppColor.WHITE,
            borderRadius: BorderRadius.circular(15)),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: AppColors.PRIMARY2,
          child: Column(
            children: [
              Text("COVOITURAGE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      color: AppColors.DAMBER1,
                      fontSize: 16.sp)),
              Text("Départ: Cocody Gestoci",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.DAMBER1,
                      fontSize: 16.sp)),
              Text("Cocody Gestoci",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.DAMBER1,
                      fontSize: 16.sp)),
            ],
          ),
        ),
      ),
    );
  }
}
