import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Homepage/widgets/HomeAppBar.dart';
import 'package:chicken/app/modules/Homepage/widgets/LeftNavigation.dart';
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
        backgroundColor: Color(0xffEEEEEE),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Obx(
              () => Column(
                children: [
                  Homeappbar(),
                  Options(),
                  Gap(5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      controller.isCategoryTapped.value
                          ? Padding(
                              padding: const EdgeInsets.only(
                                right: 5,
                              ),
                              child: Leftnavigation())
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
            ),
          ),
        ));
  }
}
