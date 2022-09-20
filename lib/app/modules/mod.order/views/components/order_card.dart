import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../../themes/colors/app_colors.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, this.items});
  final items;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      // carouselController: buttonCarouselController,
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: false,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 1,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 10),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({
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
            color: AppColors.DAMBER1,
            // alignment: Alignment.centerLeft,
            child: Text("COVOITURAGE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: AppColors.DBLACK,
                    fontSize: 16.sp)),
          ),
          Container(
            width: 70.w,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  backgroundColor: AppColors.DAMBER1,
                  radius: 25,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        color: AppColors.DBLACK,
                      ))),
              CircleAvatar(
                  backgroundColor: AppColors.DAMBER1,
                  radius: 25,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check,
                        size: 36,
                        color: AppColors.DBLACK,
                      ))),
              CircleAvatar(
                  backgroundColor: AppColors.DAMBER1,
                  radius: 25,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.multitrack_audio_rounded,
                        size: 36,
                        color: AppColors.DBLACK,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
