import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Homepage/controllers/homepage_controller.dart';
import 'package:chicken/app/modules/Homepage/widgets/BuildDropDown.dart';
import 'package:chicken/app/modules/Homepage/widgets/HoleSellButton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomepageController>();
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                controller.isCategoryTapped.value =
                    !controller.isCategoryTapped.value;
              },
              child: Builddropdown(
                image: 'assets/images/duck.png',
                value: 'ক্যাটাগিরি',
              ),
            ),
            InkWell(
              onTap: () {
                Get.bottomSheet(
                  isDismissible: true,
                  backgroundColor: Colors.transparent,
                  Container(
                    height: Get.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      border: Border(
                        top: BorderSide(
                          color: secondaryColor,
                          width: 2,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Gap(40),
                          Holesellbutton(title: 'ফার্ম রেট'),
                          Holesellbutton(title: 'ডিলার রেট'),
                          Holesellbutton(title: 'সাপ্লায়ার রেট'),
                          Holesellbutton(title: 'মিডিয়া রেট'),
                          Holesellbutton(title: 'হোলসেল রেট'),
                          Holesellbutton(title: 'সেলার রেট'),
                          Gap(40),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Builddropdown(
                image: 'assets/images/ticket.png',
                value: 'মূল্য:হোলসেলার',
              ),
            ),
            InkWell(
              onTap: () {
                Get.bottomSheet(
                  isDismissible: true,
                  backgroundColor: Colors.transparent,
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      border: Border(
                        top: BorderSide(
                          color: secondaryColor,
                          width: 2,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Gap(40),
                          Holesellbutton(title: 'ইকুইপমেন্ট'),
                          Holesellbutton(title: 'হ্যাচারি'),
                          Gap(40),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Builddropdown(
                image: 'assets/images/equip.png',
                value: 'ইকুইপমেন্ট',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
