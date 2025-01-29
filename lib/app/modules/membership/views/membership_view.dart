import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/membership/widgets/membership_option.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/membership_controller.dart';

class MembershipView extends GetView<MembershipController> {
  const MembershipView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5DFCF),
        body: Stack(
          children: [
            Column(
              children: [
                Gap(50),
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff1C9876),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                ),
                Spacer(),
                Text(
                  'আপনার যদি কোন তথ্য জানার থাকে',
                  style: TextStyle(fontSize: 12, color: primaryColor),
                ),
                Gap(5),
                Text(
                  'দয়া করে ফোন করুন',
                  style: TextStyle(fontSize: 12, color: primaryColor),
                ),
                Gap(10),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Call',
                      style: TextStyle(fontSize: 12),
                    )),
                Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        child: Text(
                          'চালিয়ে যান',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                  ),
                ),
                Gap(100),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Positioned.fill(
                  top: 100,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF7EC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Gap(20),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.MEMBERSHIP_DETAILS, arguments: {
                              'title': 'বেসিক',
                              'duration': '১',
                              'price': '750'
                            });
                          },
                          child: MembershipOption(
                            title: '(বেসিক) ১ মাস',
                            description: 'এক মাসের সাবস্ক্রিপশন ফি ৭৫০ টাকা।',
                            color: Color(0xffE5DFCF),
                          ),
                        ),
                        Gap(20),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.MEMBERSHIP_DETAILS, arguments: {
                              'title': 'স্ট্যান্ডার্ড',
                              'duration': '৬',
                              'price': '৩০০০.০০'
                            });
                          },
                          child: MembershipOption(
                            title: '(স্ট্যান্ডার্ড) ৬ মাস',
                            description: 'ছয় মাসের সাবস্ক্রিপশন ফি ৩০০০ টাকা ',
                            color: Color(0xffB0EAEB),
                          ),
                        ),
                        Gap(20),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.MEMBERSHIP_DETAILS, arguments: {
                              'title': 'প্রিমিয়াম',
                              'duration': '১২',
                              'price': '৫০০০.০০'
                            });
                          },
                          child: MembershipOption(
                            title: '(প্রিমিয়াম) ১২ মাস',
                            description: 'বারো মাসের সাবস্ক্রিপশন ফি ৫০০০ টাকা',
                            color: Color(0xff65DDDC),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}
