import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Inbox/widgets/ChatBubble.dart';
import 'package:chicken/app/modules/Inbox/widgets/InboxProductCard.dart';
import 'package:chicken/app/modules/Inbox/widgets/ReceivedText.dart';
import 'package:chicken/app/modules/Inbox/widgets/Received_text_Image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  const InboxView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff003CD8),
      backgroundColor: Color(0xffE9E8E8),
      body: SafeArea(
          child: Container(
              height: double.infinity,
              color: Color(0xffE9E8E8),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: ReceivedTextImage(
                                  message:
                                      'কেমন আছো তুমি কি গতকালের খবর শুনেছ গতকালে একটা ',
                                  date: 'Jan 13 8:33',
                                ),
                              ),
                              Gap(10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 300,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/voice_text.png'),
                                      ),
                                      Text(
                                        'Jan 13 8:33',
                                        style: TextStyle(
                                            color: greyText.withOpacity(0.58)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
                              ),
                              Gap(80),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        color: Color(0xffE9E8E8),
                        height: 60,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/send_voice_icon.png'),
                                height: 60,
                                width: 60,
                              ),
                              Gap(10),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                              Gap(5),
                              Image(
                                image:
                                    AssetImage('assets/images/camera_icon.png'),
                                height: 60,
                                width: 60,
                              ),
                              Gap(5),
                              Image(
                                image: AssetImage(
                                    'assets/images/image_send_icon.png'),
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
