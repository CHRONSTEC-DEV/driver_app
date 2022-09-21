import 'package:flutter/material.dart';

import '../../../../themes/colors/app_colors.dart';
import '../../../common/controllers.dart';

class RedirectionButtons extends StatelessWidget {
  const RedirectionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
                backgroundColor: AppColors.PRIMARY1,
                radius: 25,
                child: IconButton(
                    onPressed: () {
                      ctlHome.ghomeKey.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      size: 28,
                      color: AppColors.DWHITE0,
                    ))),
            SizedBox(height: 10),
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
            SizedBox(height: 10),
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
      ),
    );
  }
}
