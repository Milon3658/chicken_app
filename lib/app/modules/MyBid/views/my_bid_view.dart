import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/MyBid/widgets/AcceptedBid.dart';
import 'package:chicken/app/modules/MyBid/widgets/BidLeaderBoard.dart';
import 'package:chicken/app/modules/MyBid/widgets/PublishedBid.dart';
import 'package:chicken/app/modules/MyBid/widgets/TopBar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/my_bid_controller.dart';

class MyBidView extends GetView<MyBidController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Obx(
      () => Column(
        children: [
          TopBar(
            controller: controller,
          ),
          controller.changeTab.value == 0
              ? Expanded(
                  child: Container(
                    color: Color(0xffE5DFCF),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Publishedbid(),
                              Gap(15),
                              AcceptedBid(),
                              Gap(30),
                            ],
                          ),
                        )),
                  ),
                )
              : Bidleaderboard()
        ],
      ),
    )));
  }
}
