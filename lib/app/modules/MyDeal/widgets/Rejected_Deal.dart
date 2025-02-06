import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RejectedDeal extends StatelessWidget {
  const RejectedDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/images/black_chicken.png'),
                    height: 100,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jan 13 8:33',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'দাম:১৬০ টাকা',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'ব্রয়লার:২৫০ পিস',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'গড় ওজন: ২.৫ কেজি',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'নাম:আসাদুল',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'এলাকা:রাঙ্গাবাড়ী',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffFB7E09),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'বাতিল',
                        style: TextStyle(color: Colors.white),
                      ))),
                  Gap(20),
                  Text('২৪ দিন')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
