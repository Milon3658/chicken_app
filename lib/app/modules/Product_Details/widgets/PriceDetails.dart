import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Gap(10),
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
                  Gap(15),
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
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'বিড করুন ',
                      style: TextStyle(color: white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(primaryColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                  ),
                  Gap(10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'প্রস্তাব করুন',
                      style: TextStyle(color: white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(primaryColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
