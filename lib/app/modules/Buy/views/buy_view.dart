import 'package:chicken/app/modules/Homepage/controllers/homepage_controller.dart';
import 'package:chicken/app/modules/Homepage/widgets/HomeAppBar.dart';
import 'package:chicken/app/modules/Homepage/widgets/LeftNavigation.dart';
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
    final homeController = Get.find<HomepageController>();
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Obx(
        () => Column(
          children: [
            Homeappbar(),
            Gap(10),
            Options(),
            Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homeController.isCategoryTapped.value
                    ? SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.only(
                              right: 5,
                            ),
                            child: Leftnavigation()),
                      )
                    : Container(),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/chicken.png',
                        height: 240,
                        width: Get.width,
                        fit: BoxFit.cover,
                      ),
                      Gap(5),
                      GridView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.7,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemBuilder: (BuildContext context, int index) {
                            return ProductCard();
                          }),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
