import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Adds/widgets/UploadFormField.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/edit_adds_controller.dart';

class EditAddsView extends GetView<EditAddsController> {
  const EditAddsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E8E8),
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text(
          'বিজ্ঞাপন এডিট করুন',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  Image(
                      image: AssetImage('assets/images/black_chicken.png'),
                      height: 100,
                      width: 120),
                  Positioned(
                      child: Icon(Icons.close, color: Colors.white),
                      top: 15,
                      right: 5),
                ]),
                Stack(children: [
                  Image(
                      image: AssetImage('assets/images/black_chicken.png'),
                      height: 100,
                      width: 120),
                  Positioned(
                      child: Icon(Icons.close, color: Colors.white),
                      top: 15,
                      right: 5),
                ]),
                Stack(children: [
                  Image(
                      image: AssetImage('assets/images/black_chicken.png'),
                      height: 100,
                      width: 120),
                  Positioned(
                      child: Icon(Icons.close, color: Colors.white),
                      top: 15,
                      right: 5),
                ]),
              ],
            ),
            Uploadformfield(
              title: 'বিজ্ঞাপন ক্যাটাগরি',
              isIcon: true,
              hint: 'বিক্রয় বিজ্ঞাপন',
            ),
            Gap(10),
            Uploadformfield(
              title: 'পণ্যের ধরন',
              isIcon: true,
              hint: 'ব্রয়লার',
            ),
            Gap(10),
            Uploadformfield(
              title: 'গড় ওজন (কেজি)',
              hint: '2.6',
            ),
            Gap(10),
            Uploadformfield(
              title: 'মোট সংখ্যা',
              hint: '১২০০',
            ),
            Gap(10),
            Uploadformfield(
              title: 'দাম',
              hint: '১২০০',
            ),
            Gap(10),
            Uploadformfield(
              title: 'বিস্তারিত',
            ),
            Gap(20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'বিজ্ঞাপন যুক্ত করুন',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
