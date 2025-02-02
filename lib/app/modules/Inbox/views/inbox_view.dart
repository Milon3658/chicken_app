import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Inbox/widgets/ChatBubble.dart';
import 'package:chicken/app/modules/Inbox/widgets/InboxProductCard.dart';
import 'package:chicken/app/modules/Inbox/widgets/ReceivedText.dart';
import 'package:chicken/app/modules/MyTotalAdds/widgets/AddCards.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  const InboxView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003CD8),
      body: SafeArea(
          child: Container(
        color: Color(0xffE9E8E8),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('শরিফ আহমেদ'),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                          Gap(2),
                          Text('Online'),
                        ],
                      ),
                    ],
                  ),
                  Gap(10),
                  Inboxproductcard(),
                ]),
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Receivedtext(
                        image: 'assets/images/men.png',
                        message:
                            'কেমন আছো তুমি কি গতকালের খবর শুনেছ গতকালে একটা ',
                        date: 'Jan 13 8:33',
                      )),
                  Gap(10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ChatBubble(
                        message:
                            'কেমন আছো তুমি কি গতকালের খবর শুনেছ গতকালে একটা ',
                        time: 'Jan 13 8:33'),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
