import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/sellPage/controllers/sell_page_controller.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SellPageView extends GetView<SellPageController> {
  const SellPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E8E8),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.toNamed(Routes.MAINPAGE);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: primaryColor,
        title: const Text(
          '',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text('sell'),
      ),
    );
  }
}
