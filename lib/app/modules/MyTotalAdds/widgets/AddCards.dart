import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Addcards extends StatelessWidget {
  const Addcards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image(
                    image: AssetImage('assets/images/black_chicken.png'),
                    height: 100,
                    width: 160,
                  ),
                ),
                Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(5),
                    Text(
                      'দাম:১৬০ টাকা',
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(5),
                    Text(
                      'ব্রয়লার:২৫০ পিস',
                      style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize: 16,
                      ),
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Text(
                          'গড় ওজন: ২.৫ কেজি',
                          style: TextStyle(
                            color: greyText.withOpacity(0.58),
                            fontSize: 16,
                          ),
                        ),
                        Gap(5),
                        Text(
                          '২৪ দিন',
                          style: TextStyle(
                            color: greyText.withOpacity(0.58),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.EDIT_ADDS);
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Gap(5),
                        Icon(
                          Icons.edit,
                          color: greyText.withOpacity(0.58),
                        ),
                        Gap(5),
                        Text(
                          'এডিট',
                          style: TextStyle(
                            color: greyText.withOpacity(0.58),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(5),
                      Icon(
                        Icons.delete,
                        color: greyText.withOpacity(0.58),
                      ),
                      Gap(5),
                      Text(
                        'ডিলেট',
                        style: TextStyle(
                          color: greyText.withOpacity(0.58),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
