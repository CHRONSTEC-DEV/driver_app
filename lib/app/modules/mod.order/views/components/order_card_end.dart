import 'package:driver_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../themes/colors/app_colors.dart';
import '../../../../utils/floating_modal.dart';
import 'order_modal_detail.dart';
import 'order_modal_paiement.dart';

class OrderCardEnd extends StatelessWidget {
  const OrderCardEnd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Expanded(child: SizedBox()),
        // Card(
        //     elevation: 0,
        //     color: Colors.transparent,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     // color: ,
        //     child: Positioned(
        //       bottom: 0,
        //       child: FloatingActionButton.extended(
        //         backgroundColor: AppColors.DRED,
        //         elevation: 0,
        //         onPressed: () {
        //           progressDialogLoading(context, "Patientez svp", "En cours");
        //         }, heroTag: "Terminer1",
        //         icon: const Icon(LineIcons.cloudscaleCh),
        //         label: Text("Terminer course".toUpperCase()),
        //       ),
        //     )),
        Card(
            elevation: 0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // color: ,
            child: FloatingActionButton.extended(
              backgroundColor: AppColors.PRIMARY1,
              elevation: 0,
              onPressed: () {
                showFloatingModalBottomSheet(
                    context: context,
                    builder: (context) =>
                        OrderModalPaiement(key: Key("paiement")));
              },
              heroTag: "paiementbtn1",
              icon: const Icon(Icons.payment),
              label: Text("Payement".toUpperCase()),
            )),
        Card(
            elevation: 0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // color: ,
            child: Positioned(
              bottom: 0,
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.PRIMARY1,
                elevation: 0,
                onPressed: () {
                  showFloatingModalBottomSheet(
                      context: context,
                      builder: (context) => OrderModalDetail());
                },
                heroTag: "Détail1",
                icon: const Icon(Icons.roundabout_right),
                label: Text("Détail Course".toUpperCase()),
              ),
            )),
      ],
    );
  }
}
