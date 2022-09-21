import 'package:driver_app/app/themes/colors/app_colors.dart';
import 'package:driver_app/app/utils/app_image.dart';
import 'package:driver_app/app/utils/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OrderModalPaiement extends StatelessWidget {
  const OrderModalPaiement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Paiement course'.toUpperCase(),
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: AppColors.DBLACK)),
            subtitle: Text("Choisir un mode de paiement",
                style: TextStyle(color: AppColors.DBLACK)),
            trailing: IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.close)),
          ),
          Divider(),
          ListTile(
            tileColor: Colors.grey.shade200,
            leading: Text('A Encaisser',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.DBLACK)),
            trailing: Text('25000 Frs'.toUpperCase(),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: AppColors.DRED)),
            onTap: () {},
          ),
          ListTile(
            tileColor: Colors.grey.shade50,
            leading: Text('Montant réel',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.DBLACK)),
            trailing: Text('20000 Frs'.toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.DBLACK)),
            onTap: () {},
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  progressDialogLoading(context, "Paiement Cash");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey.shade300,
                        child:
                            SvgPicture.asset(AppImage.cashpay, height: 10.h)),
                    SizedBox(height: 10),
                    Text('Cash',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: AppColors.DBLACK))
                  ],
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  progressDialogLoading(context, "Paiement Cash");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey.shade300,
                        child:
                            SvgPicture.asset(AppImage.cardpay, height: 10.h)),
                    SizedBox(height: 10),
                    Text(
                      'Carte',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.DBLACK),
                    )
                  ],
                ),
              )),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
