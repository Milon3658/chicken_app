import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buy_controller.dart';

class BuyView extends GetView<BuyController> {
  const BuyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('বিজ্ঞাপন দিন'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BuyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
