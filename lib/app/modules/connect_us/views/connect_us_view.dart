import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/data/AppTexts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/connect_us_controller.dart';

class ConnectUsView extends GetView<ConnectUsController> {
  const ConnectUsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'যোগাযোগ',
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
