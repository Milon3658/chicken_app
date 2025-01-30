import 'package:chicken/app/modules/Homepage/controllers/homepage_controller.dart';
import 'package:chicken/app/modules/Homepage/widgets/BuildDropDown.dart';
import 'package:flutter/material.dart';
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
            Builddropdown(
              image: 'assets/images/ticket.png',
              value: 'মূল্য:হোলসেলার',
            ),
            Builddropdown(
              image: 'assets/images/equip.png',
              value: 'ইকুইপমেন্ট',
            ),
          ],
        ),
      ),
    );
  }
}
