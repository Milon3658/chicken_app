import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/data/AppTexts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'আমাদের সম্পর্কে',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff1C9876),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Apptexts().aboutUs,
              style: TextStyle(
                fontSize: 18,
                color: greyText.withOpacity(0.58),
              ),
            ),
          ),
        ));
  }
}
