import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E8E8),
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Details',
          style: TextStyle(color: white),
        ),
      ),
      body: const Center(
        child: Text(
          'ProductDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
