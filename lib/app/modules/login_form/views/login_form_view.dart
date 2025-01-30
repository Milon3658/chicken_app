import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Adds/widgets/UploadFormField.dart';
import 'package:chicken/app/modules/login_form/controllers/login_form_controller.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class LoginFormView extends GetView<LoginFormController> {
  const LoginFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff003CD8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(30),
              Stack(
                children: [
                  Container(
                    height: Get.height - 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE5DFCF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                  ),
                  Positioned.fill(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Container(
                        height: Get.height,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Color(0xffE5DFCF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              Gap(30),
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    'অভিনন্দন চলুন শুরু করা যাক',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: greyText.withOpacity(0.58)),
                                  ),
                                ),
                              ),
                              Gap(10),
                              Uploadformfield(title: 'নাম'),
                              Gap(10),
                              Uploadformfield(title: 'ইমেইল (অপশনাল)'),
                              Gap(10),
                              Uploadformfield(title: 'মোবাইল'),
                              Gap(10),
                              Uploadformfield(title: 'পদবি'),
                              Gap(10),
                              Row(
                                children: [
                                  Checkbox(
                                      value: false,
                                      onChanged: (value) {
                                        value = !value!;
                                      }),
                                  Gap(5),
                                  RichText(
                                      text: TextSpan(
                                          text:
                                              'আমাদের নীতিমালা মেনে নিন এবং দেখুন \n',
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                        TextSpan(
                                            text: 'নীতিমালা,গোপনীয়তা',
                                            style:
                                                TextStyle(color: Colors.blue))
                                      ])),
                                ],
                              ),
                              Gap(20),
                              SizedBox(
                                height: 50,
                                width: Get.width,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                primaryColor)),
                                    onPressed: () {
                                      Get.offAllNamed(Routes.MAINPAGE);
                                    },
                                    child: Text(
                                      'অ্যাকাউন্ট সম্পন্ন করুন',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              )
            ],
          ),
        ));
  }
}
