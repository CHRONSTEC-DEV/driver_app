import 'package:flutter/material.dart';

import '../../../../themes/colors/app_colors.dart';

class TopMenuButton extends StatelessWidget {
  const TopMenuButton({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: AppColors.DAMBER1,
              radius: 25,
              child: IconButton(
                  onPressed: ontap,
                  icon: const Icon(
                    Icons.menu,
                    size: 28,
                    color: AppColors.DBLACK,
                  )))),
    );
  }
}
