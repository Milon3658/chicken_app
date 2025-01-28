import 'package:chicken/app/modules/Homepage/widgets/HomeAppBar.dart';
import 'package:chicken/app/modules/Homepage/widgets/Options.dart';
import 'package:chicken/app/modules/Homepage/widgets/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/buy_controller.dart';

class BuyView extends GetView<BuyController> {
  const BuyView({super.key});
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard();
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
