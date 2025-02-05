import 'package:chicken/app/modules/MyBid/widgets/bid_value.dart';
import 'package:chicken/app/modules/MyDeal/widgets/DealTopBar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/my_deal_controller.dart';

class MyDealView extends GetView<MyDealController> {
  const MyDealView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DealTopBar(controller: controller),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [BidValue('Jan 13 8:33')],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
