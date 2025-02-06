import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/MyBid/widgets/bid_value.dart';
import 'package:chicken/app/modules/MyDeal/widgets/Accepted_Deal.dart';
import 'package:chicken/app/modules/MyDeal/widgets/Complete_deal.dart';
import 'package:chicken/app/modules/MyDeal/widgets/DealTopBar.dart';
import 'package:chicken/app/modules/MyDeal/widgets/MyDealWidget.dart';
import 'package:chicken/app/modules/MyDeal/widgets/Rejected_Deal.dart';
import 'package:chicken/app/modules/MyDeal/widgets/User_Request.dart';
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
          child: Obx(
        () => Column(
          children: [
            DealTopBar(controller: controller),
            Expanded(
              child: Container(
                height: Get.height,
                color: Color(0xffE5DFCF),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SingleChildScrollView(
                    child: controller.changeTab.value == 0
                        ? Column(
                            children: [
                              if (controller.selectOption.value == 0)
                                Mydealwidget()
                              else if (controller.selectOption.value == 1)
                                UserRequest()
                              else if (controller.selectOption.value == 2)
                                AcceptedDeal()
                              else if (controller.selectOption.value == 3)
                                RejectedDeal()
                            ],
                          )
                        : CompleteDeal(),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
