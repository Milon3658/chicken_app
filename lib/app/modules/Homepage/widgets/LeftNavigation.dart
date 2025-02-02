import 'dart:ui';

import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Leftnavigation extends StatefulWidget {
  const Leftnavigation({super.key});

  @override
  State<Leftnavigation> createState() => _LeftnavigationState();
}

class _LeftnavigationState extends State<Leftnavigation> {
  @override
  Widget build(BuildContext context) {
    final List<String> all_options = [
      'ফিল্টার',
      'সোনালী',
      'সোনালী হাইব্রিড',
      'ব্রয়লার প্যারেন্ট',
      'টাইগার',
      'কক',
      'পেকিন',
      'খাকি ক্যাম্বেল',
      'পুলিশ ক্যাম্প',
      'বেইজিং',
      'ফাওমি',
      'দেশি'
    ];
    return Container(
      width: 100,
      height: Get.height,
      color: Colors.white,
      child: ListView.builder(
          itemCount: all_options.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    all_options[index],
                    style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            );
          }),
    );
  }
}
