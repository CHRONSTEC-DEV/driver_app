import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../themes/colors/app_colors.dart';
import '../../../../utils/floating_modal.dart';
import 'order_modal_info.dart';

class OrderCardGo extends StatelessWidget {
  const OrderCardGo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
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
            label: Text("Commencer Course".toUpperCase()),
          )
        ],
      ),
    );
  }
}
