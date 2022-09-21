import 'package:driver_app/app/themes/colors/app_colors.dart';
import 'package:driver_app/app/utils/app_image.dart';
import 'package:driver_app/app/utils/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OrderModalDetail extends StatelessWidget {
  const OrderModalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Détail Course'.toUpperCase(),
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: AppColors.DBLACK)),
            trailing: IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.close)),
          ),
          Divider(),
          ListTile(
            // tileColor: Colors.grey.shade200,
            leading: Text('Départ',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.DBLACK)),
            title: Text("Saint-Jean, Cocody, Cote-d'Ivoire",
                softWrap: true,
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.PRIMARY1)),
            onTap: () {},
          ),
          ListTile(
            // tileColor: Colors.grey.shade200,
            leading: Text('Arrivée',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.DBLACK)),
            title: Text("Marcory Poto Poto, Koumassi, Cote-d'Ivoire",
                softWrap: true,
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.PRIMARY1)),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            tileColor: Colors.grey.shade50,
            leading: Text('Duréé',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.DBLACK)),
            trailing: Text('45 minutes',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.DBLACK)),
            onTap: () {},
          ),
          ListTile(
            tileColor: Colors.grey.shade50,
            leading: Text('Distance',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.DBLACK)),
            trailing: Text('22 Kilomètres',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.DBLACK)),
            onTap: () {},
          ),
          Divider(),
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
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
