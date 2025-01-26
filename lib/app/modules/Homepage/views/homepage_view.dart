import 'package:chicken/app/modules/Homepage/widgets/HomeAppBar.dart';
import 'package:chicken/app/modules/Homepage/widgets/Options.dart';
import 'package:chicken/app/modules/Homepage/widgets/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Homeappbar(),
            Gap(10),
            Options(),
            Gap(10),
            Image.asset(
              'assets/images/chicken.png',
              height: 240,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
