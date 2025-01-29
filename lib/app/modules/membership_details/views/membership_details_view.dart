import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/membership_details_controller.dart';

class MembershipDetailsView extends GetView<MembershipDetailsController> {
  const MembershipDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = Get.arguments;
    return Scaffold(
        backgroundColor: Color(0xff003CD8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(80),
              Stack(
                children: [
                  Container(
                    height: Get.height - 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE5DFCF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 700,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              children: [
                                Gap(20),
                                Image(
                                  image: AssetImage(
                                      'assets/images/large_chicken.png'),
                                  height: 140,
                                  width: 140,
                                ),
                                Gap(10),
                                Text(data['title'].toString(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2B7EC6))),
                                Gap(5),
                                Divider(
                                  color: Color(0xff2B7EC6),
                                  thickness: 3,
                                  indent: 50,
                                  endIndent: 50,
                                ),
                                Gap(10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/round_check.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Gap(5),
                                      Text(
                                        'প্রতিদিনের প্রাইস লিস্ট',
                                        style: TextStyle(
                                            color: Color(0xff2B7EC6),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/round_check.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Gap(5),
                                      Text(
                                        'সব ক্রয় বিক্রয় অ্যাড',
                                        style: TextStyle(
                                            color: Color(0xff2B7EC6),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/round_check.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Gap(5),
                                      Text(
                                        'লোকেশন মোবাইল নাম্বার ট্র্যাকিং',
                                        style: TextStyle(
                                            color: Color(0xff2B7EC6),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/round_check.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Gap(5),
                                      Text(
                                        '${data['duration'].toString()} মাসের পূর্ণ মেয়াদকাল',
                                        style: TextStyle(
                                            color: Color(0xff2B7EC6),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/round_check.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Gap(5),
                                      Text(
                                        'গ্রাহক সহায়তা ',
                                        style: TextStyle(
                                            color: Color(0xff2B7EC6),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Gap(40),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/taka.png'),
                                        height: 50,
                                        width: 50,
                                      ),
                                      Gap(10),
                                      Text(
                                        data['price'].toString(),
                                        style: TextStyle(
                                            color: Color(0xff2B7EC6),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40),
                                      )
                                    ],
                                  ),
                                ),
                                Gap(5),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${data['duration'].toString()} মাস ',
                                      style: TextStyle(
                                          color: Color(0xff2B7EC6),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )),
                                Gap(20),
                                SizedBox(
                                  height: 50,
                                  width: 250,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffC64709)),
                                      child: Text(
                                        'এখনই কিনুন',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )),
                                ),
                              ],
                            ),
                          ))),
                ],
              )
            ],
          ),
        ));
  }
}
