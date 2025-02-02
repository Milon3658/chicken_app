import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_deal_controller.dart';

class MyDealView extends GetView<MyDealController> {
  const MyDealView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyDealView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyDealView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
