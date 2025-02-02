import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/my_bid_controller.dart';

class MyBidView extends GetView<MyBidController> {
  const MyBidView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(children: [
            Container(
              color: primaryColor,
              height: 150,
              width: Get.width,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: Get.width,
                    decoration: BoxDecoration(color: primaryColor),
                  ),
                  Container(
                    height: 80,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Center(
                                    child: Text(
                                      'টোটাল বিড: ১০',
                                      style: TextStyle(
                                        color: greyText.withOpacity(0.58),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Center(
                                    child: Text(
                                      'গ্রহণ হয়েছে: ৪',
                                      style: TextStyle(
                                        color: greyText.withOpacity(0.58),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Center(
                                    child: Text(
                                      'সাড়া নেই: ৬',
                                      style: TextStyle(
                                        color: greyText.withOpacity(0.58),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Align(
                alignment: Alignment.topCenter,
                child: Positioned.fill(
                    child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 145,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          secondaryColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              child: Text(
                                'আমার বিড',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Gap(10),
                        SizedBox(
                          width: 145,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        primaryColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            onPressed: () {},
                            child: Text('বিড লিডারবোর্ড',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            )
          ])
        ],
      ),
    ));
  }
}
