import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff003CD8),
        body: Stack(
          children: [
            Column(
              children: [
                Gap(30),
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff1C9876),
                          Color(0xff093227),
                        ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFFFFFF),
                            Color(0xffA4CBC0),
                          ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  primaryColor),
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.OTP);
                            },
                            child: Text(
                              'জমা দিন',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Positioned.fill(
                  child: Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('আপনার মোবাইল নাম্বার প্রবেশ করান'),
                    Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Positioned.fill(
                    child: Image(
                  image: AssetImage('assets/images/mobile.png'),
                  height: 400,
                  width: 300,
                ))),
          ],
        ));
  }
}
