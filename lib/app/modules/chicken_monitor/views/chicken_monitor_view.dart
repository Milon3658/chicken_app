import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/chicken_monitor/widgets/MonitoringCard.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/chicken_monitor_controller.dart';

class ChickenMonitorView extends GetView<ChickenMonitorController> {
  const ChickenMonitorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9E8E8),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          backgroundColor: primaryColor,
          title: Text(
            'বাচ্চা মনিটরিং',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.CREATE_INPUT);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'ক্রিয়েট ইনপুট আপডেট',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: greyText.withOpacity(0.7)),
                  ),
                ),
              ),
            ),
            Gap(10),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Gap(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'বাচ্চা মনিটরিং লিস্ট',
                    style: TextStyle(
                        color: greyText.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                MonitoringCard(),
                Gap(10),
                MonitoringCard(),
                Gap(10),
                MonitoringCard(),
                Gap(10),
                MonitoringCard(),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: white,
                              ),
                              Gap(10),
                              Text(
                                'প্রতিনিধি আশরাফুল',
                                style: TextStyle(color: white),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.message,
                                color: white,
                              ),
                              Gap(10),
                              Text(
                                'হোয়াটসঅ্যাপ',
                                style: TextStyle(color: white),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                Gap(50)
              ],
            ),
          ),
        ));
  }
}
