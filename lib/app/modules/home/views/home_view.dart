import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../mod.navigation/views/mod_navigation_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ModNavigationView()],
      ),
    );
  }
}
