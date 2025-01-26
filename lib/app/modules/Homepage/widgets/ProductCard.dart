import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PRODUCT_DETAILS);
      },
      child: Container(
        height: 280,
        width: 195,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/black_chicken.png'),
            Gap(5),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'দাম:১৬০ টাকা',
                style: TextStyle(
                  fontSize: 20,
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
                  fontSize: 17,
                  color: greyText.withOpacity(0.58),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'গড় ওজন: ২.৫ কেজি',
                style: TextStyle(
                  fontSize: 17,
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
                        fontSize: 17,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(5),
                  Image.asset('assets/images/calender.png'),
                  Gap(5),
                  Text(
                    '২৪ দিন',
                    style: TextStyle(color: greyText.withOpacity(0.58)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
