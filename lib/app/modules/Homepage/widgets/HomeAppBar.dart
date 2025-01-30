import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Homepage/widgets/AjkerBazar.dart';
import 'package:chicken/app/modules/Homepage/widgets/HoleSellButton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Homeappbar extends StatelessWidget {
  const Homeappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      height: 80,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      height: 40,
                      width: 40,
                    ),
                    Text(
                      'চিকনেস',
                      style: TextStyle(
                          fontSize: 24,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: white,
                      size: 14,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'লোকেশন: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: 'ফরিদপুর:',
                              style: TextStyle(
                                fontSize: 12,
                                color: secondaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined,
                        color: secondaryColor),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Get.bottomSheet(
                  isDismissible: true,
                  backgroundColor: Colors.transparent,
                  Container(
                      height: Get.height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        border: Border(
                          top: BorderSide(
                            color: secondaryColor,
                            width: 2,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: Ajkerbazar()),
                );
              },
              child: Container(
                height: 35,
                width: 140,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/dollar.png',
                        height: 20,
                        width: 20,
                      ),
                      Gap(5),
                      Text('আজকের বাজার',
                          style: TextStyle(
                            fontSize: 12,
                            color: mainText,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/images/hand.png'),
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                Gap(8),
                Image(
                  image: AssetImage('assets/images/notification.png'),
                  height: 25,
                  width: 25,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
