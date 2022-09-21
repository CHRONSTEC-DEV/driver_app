import 'package:driver_app/app/modules/mod.navigation/views/components/navigation_map.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import 'app/modules/mod.navigation/views/mod_navigation_view.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  await GetStorage.init();

  runApp(Sizer(
    builder: (p0, p1, p2) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JUNO DRIVER",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // home: ModNavigationView(),
    ),
  ));
}
