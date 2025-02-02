import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deal_controller.dart';

class DealView extends GetView<DealController> {
  const DealView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DealView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
