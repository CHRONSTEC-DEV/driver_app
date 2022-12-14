import 'package:driver_app/app/utils/app_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../modules/common/controllers.dart';
import '../themes/colors/app_colors.dart';

class BuildDrawer extends StatelessWidget {
  // final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;

  BuildDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // clipper: OvalRightBorderClipper(),
      child: Drawer(
        width: 75.w,
        child: Container(
          decoration: const BoxDecoration(
              color: AppColors.LIGHT,
              boxShadow: [BoxShadow(color: Colors.black45)]),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColors.PRIMARY2,
                        boxShadow: [BoxShadow(color: AppColors.LIGHT)]),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.power_settings_new,
                              color: AppColors.LIGHT,
                            ),
                            onPressed: () async {
                              await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Se déconnecter"),
                                      content: const Text(
                                          "Vous etes sur le point de vous déconnecter de votre compte, c'est bien cela"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            // LocalStorage().box.erase();
                                            // Get.offAllNamed(
                                            //     Routes.AUTHENTICATION);
                                          },
                                          child: const Text('Déconnecter'),
                                        ),
                                        TextButton(
                                          onPressed: () async {
                                            Get.back();
                                          },
                                          child: const Text('Rester'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ),
                        Container(
                          height: 90,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              // shape: BoxShape.circle,
                              // gradient: LinearGradient(
                              //     colors: [Colors.orange, Colors.deepOrange]),
                              ),
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(AppImage.person_icon),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        // Text(
                        //   "${ctlHome.driver.value.nom ?? "Votre nom"} ${ctlHome.driver.value.prenom ?? ""}",
                        //   style: const TextStyle(
                        //       color: AppColors.LIGHT,
                        //       fontSize: 18.0,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        // Text(
                        //   "${ctlHome.driver.value.immatriculation ?? ""}  |  ${ctlHome.driver.value.vehiculeType ?? ""}",
                        //   style:
                        //       TextStyle(color: AppColors.LIGHT, fontSize: 16.0),
                        // ),
                        // SizedBox(height: 10.sp),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildRow(
                          CupertinoIcons.house,
                          "Accueil",
                          showBadge: true,
                          badgeText: /* ctlcommande.listCommande.value.commande !=
                                  null
                              ? ctlcommande.listCommande.value.commande!.length
                              : */
                              0,
                          ontap: () {
                            Get.back();
                            // checkCommandedisponiblePeriodicEvent();
                            // ctlcommande.getCommandeDisponible();
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.line_horizontal_3_decrease,
                          "Historique",
                          ontap: () {
                            // ctlHistory.onInit();
                            // Get.to(() => HistoryView());
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.bag,
                          "Rechargement",
                          ontap: () {
                            // Get.toNamed(Routes.RECHARGEMENT);
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.person,
                          "Mon profile",
                          ontap: () {
                            // ctlProfile.readDriverLocalInfo();
                            // // ctlProfile.updatePassword();
                            // Get.toNamed(Routes.PROFILE);
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.group,
                          "Partenaire & Business",
                          ontap: () async {
                            // ctlAide.getLienProprio().then((value) async {
                            //   if (value.isNotEmpty) {
                            //     await _launchInBrowser("$value");
                            //   } else {
                            //     Get.snackbar("Page Indisponible",
                            //         "La page que vous demandez est indisponible, réessayez svp !",
                            //         backgroundColor: AppColors.PRIMARY1,
                            //         colorText: AppColors.DARK);
                            //   }
                            // });
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.chat_bubble_2,
                          "Écrire à Juno",
                          ontap: () async {
                            // await ctlSupport.getMessageObjet();
                            // Get.toNamed(Routes.SUPPORT);
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.lock_shield,
                          "Gestion Données",
                          ontap: () async {
                            // Get.toNamed(Routes.GESTION_DONNEES);
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                        _buildRow(
                          CupertinoIcons.info_circle,
                          "Aide",
                          ontap: () async {
                            // Get.toNamed(Routes.AIDE);
                            ctlHome.ghomeKey.currentState!.openEndDrawer();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      Get.snackbar("Echec", "Veuillez réessayer svp!");
    }
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title,
      {bool showBadge = false, badgeText = 10, ontap}) {
    final TextStyle tStyle = TextStyle(
      color: active,
      fontSize: 15.sp,
    );
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.sp),
        child: Row(children: [
          Icon(
            icon,
            color: divider,
          ),
          const SizedBox(width: 10.0),
          Text(
            title,
            style: tStyle,
          ),
          const Spacer(),
          if (showBadge)
            Material(
              color: Colors.deepOrange,
              elevation: 5.0,
              shadowColor: Colors.red,
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  "$badgeText+",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
        ]),
      ),
    );
  }
}
