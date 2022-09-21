import 'package:flutter/material.dart';

import '../../../../themes/colors/app_colors.dart';

class Chrono extends StatelessWidget {
  const Chrono({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(child: SizedBox()),
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
            const SizedBox(height: 10),
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
