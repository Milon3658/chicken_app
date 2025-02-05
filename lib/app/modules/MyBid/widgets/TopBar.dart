import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/MyBid/controllers/my_bid_controller.dart';
import 'package:chicken/app/modules/MyBid/widgets/bid_value.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TopBar extends StatelessWidget {
  MyBidController controller;

  TopBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: primaryColor,
        height: 160,
        width: Get.width,
        child: Column(
          children: [
            Container(
              height: 80,
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
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BidValue(title: 'টোটাল বিড: ১০'),
                        BidValue(title: 'গ্রহণ হয়েছে: ৪'),
                        BidValue(title: 'সাড়া নেই: ৬'),
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
                            backgroundColor: MaterialStateProperty.all<Color>(
                                secondaryColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          controller.changeTab.value = 0;
                        },
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
                              MaterialStateProperty.all<Color>(primaryColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        controller.changeTab.value = 1;
                      },
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
    ]);
  }
}
