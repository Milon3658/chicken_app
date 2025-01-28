import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/membership_controller.dart';

class MembershipView extends GetView<MembershipController> {
  const MembershipView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5DFCF),
        body: Stack(children: [
          Column(
            children: [
              Gap(50),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff1C9876),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
              ),
              Spacer(),
              Text(
                'আপনার যদি কোন তথ্য জানার থাকে',
                style: TextStyle(fontSize: 12, color: primaryColor),
              ),
              Gap(5),
              Text(
                'দয়া করে ফোন করুন',
                style: TextStyle(fontSize: 12, color: primaryColor),
              ),
              Gap(10),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Call',
                    style: TextStyle(fontSize: 12),
                  )),
              Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor),
                      child: Text(
                        'চালিয়ে যান',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                ),
              ),
              Gap(100),
            ],
          ),
        ]));
  }
}
