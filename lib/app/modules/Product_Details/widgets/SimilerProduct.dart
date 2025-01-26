import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Similerproduct extends StatelessWidget {
  const Similerproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 130,
        width: Get.width,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/black_chicken.png',
                  height: 120,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'দাম:১৬০ টাকা',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 20,
                  ),
                ),
                Gap(5),
                Text(
                  'ব্রয়লার:২৫০ পিস',
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontSize: 17,
                  ),
                ),
                Gap(5),
                Row(
                  children: [
                    Text('গড় ওজন: ২.৫ কেজি',
                        style: TextStyle(
                          color: greyText.withOpacity(0.58),
                          fontSize: 17,
                        )),
                    Gap(10),
                    Text(
                      '২৪ দিন',
                      style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize: 17,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
