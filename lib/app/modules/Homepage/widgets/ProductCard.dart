import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Homepage/controllers/homepage_controller.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomepageController>();
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PRODUCT_DETAILS);
      },
      child: Obx(
        () => Container(
          height: 300,
          width: controller.isCategoryTapped.value == true ? 150 : 180,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset('assets/images/black_chicken.png')),
              Gap(5),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'দাম:১৬০ টাকা',
                  style: TextStyle(
                    fontSize:
                        controller.isCategoryTapped.value == true ? 16 : 18,
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'ব্রয়লার:২৫০ পিস',
                  style: TextStyle(
                    fontSize:
                        controller.isCategoryTapped.value == true ? 14 : 16,
                    color: greyText.withOpacity(0.58),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'গড় ওজন: ২.৫ কেজি',
                  style: TextStyle(
                    fontSize:
                        controller.isCategoryTapped.value == true ? 14 : 16,
                    color: greyText.withOpacity(0.58),
                  ),
                ),
              ),
              Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      'ভেরিফায়েড',
                      style: TextStyle(
                          fontSize: controller.isCategoryTapped.value == true
                              ? 12
                              : 14,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(5),
                    Image.asset('assets/images/calender.png', height: 15),
                    Gap(5),
                    Text(
                      '২৪ দিন',
                      style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize:
                            controller.isCategoryTapped.value == true ? 12 : 14,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
