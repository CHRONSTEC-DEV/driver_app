import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mod_order_detail_controller.dart';

class ModOrderDetailView extends GetView<ModOrderDetailController> {
  const ModOrderDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModOrderDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ModOrderDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
