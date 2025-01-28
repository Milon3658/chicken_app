import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Adds/widgets/UploadFormField.dart';
import 'package:chicken/app/modules/sellPage/widgets/UploadSellPhoto.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/adds_controller.dart';

class AddsView extends GetView<AddsController> {
  const AddsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9E8E8),
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.toNamed(Routes.MAINPAGE);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: primaryColor,
          title: const Text(
            'বিজ্ঞাপন দিন',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Uploadsellphoto(),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Uploadformfield(
                    title: 'বিজ্ঞাপন ক্যাটাগরি',
                    isIcon: true,
                  ),
                  Gap(10),
                  Uploadformfield(
                    title: 'পণ্যের ধরন',
                    isIcon: true,
                  ),
                  Gap(10),
                  Uploadformfield(
                    title: 'গড় ওজন (কেজি)',
                  ),
                  Gap(10),
                  Uploadformfield(
                    title: 'মোট সংখ্যা',
                  ),
                  Gap(10),
                  Uploadformfield(
                    title: 'দাম',
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
                  Gap(100),
                ],
              ),
            )
          ],
        )));
  }
}
