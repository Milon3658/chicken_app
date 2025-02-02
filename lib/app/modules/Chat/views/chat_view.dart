import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Chat/widgets/MessageTile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'যোগাযোগের তালিকা',
          style: TextStyle(color: Colors.white),
        ),
        leading: Center(
          child: Image(
            image: AssetImage('assets/images/chat_round.png'),
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Image(image: AssetImage('assets/images/chat_color.png')),
                Gap(70),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffE9E8EA),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('মোট বার্তা'),
                      CircleAvatar(
                        backgroundColor: Color(0xff634C98),
                        radius: 15,
                        child: Text('4', style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'মোট ব্যক্তি (৪)',
                style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Gap(10),
            Messagetile(),
            Gap(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'সাপ্লায়ার',
                style:
                    TextStyle(color: greyText.withOpacity(0.58), fontSize: 16),
              ),
            ),
            Gap(10),
            Messagetile(),
            Gap(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'ডিলার',
                style:
                    TextStyle(color: greyText.withOpacity(0.58), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
