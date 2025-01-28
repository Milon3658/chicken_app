import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/my_profile/widgets/GenderSelect.dart';
import 'package:chicken/app/modules/my_profile/widgets/MyPofileFormField.dart';
import 'package:chicken/app/modules/my_profile/widgets/ProfileInfoCard.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/my_profile_controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  const MyProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'মৌলিক তথ্য',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'মৌলিক তথ্য',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Gap(5),
                Divider(
                  color: greyText.withOpacity(0.2),
                ),
                Gap(5),
                ProfileInfoCard(),
                Divider(
                  color: greyText.withOpacity(0.2),
                ),
                Gap(5),
                Mypofileformfield(hintText: '01753123654', title: 'মোবাইল'),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'লিঙ্গ',
                    style: TextStyle(color: greyText.withOpacity(0.58)),
                  ),
                ),
                Row(
                  children: [
                    Genderselect(value: 'পুরুষ', selectedValue: 'পুরুষ'),
                    Genderselect(value: 'মহিলা', selectedValue: ''),
                    Genderselect(value: 'অন্যান্য', selectedValue: ''),
                  ],
                ),
                Mypofileformfield(hintText: 'rashid@gmail.com', title: 'ইমেইল'),
                Mypofileformfield(hintText: '১০.১২.২০২৫', title: 'জন্মতারিখ'),
                Mypofileformfield(hintText: 'রাজশাহী', title: 'বিভাগ'),
                Mypofileformfield(hintText: 'সিরাজগঞ্জ', title: 'জেলা'),
                Mypofileformfield(hintText: 'বেলকুচি', title: 'থানা'),
                Mypofileformfield(hintText: 'বেতিল', title: 'এলাকা'),
                Gap(20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'আপডেট',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Gap(20),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: greyText.withOpacity(0.2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Delete Your Account',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Gap(10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'When you delete your account, you lose access to Front account services, and we permanently delete your personal data. You can cancel the deletion for 14 days.',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                                fillColor: MaterialStateProperty.all<Color>(
                                    Colors.red),
                                value: '',
                                groupValue: '',
                                onChanged: (value) {}),
                            Text(
                              'Confirm that I want to delete my profile',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Gap(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
                Gap(50),
              ],
            ),
          ),
        ));
  }
}
