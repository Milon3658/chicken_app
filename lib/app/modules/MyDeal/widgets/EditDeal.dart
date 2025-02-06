import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Adds/widgets/UploadFormField.dart';
import 'package:chicken/app/modules/MyDeal/widgets/chicken_card.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class EditDeal extends StatelessWidget {
  const EditDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C9876),
        title: Text(
          'এডিট করুন',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Color(0xffE5DFCF),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ChickenCard(),
                Gap(10),
                Uploadformfield(title: 'প্রস্তাবিত মুরগির সংখ্যা'),
                Gap(10),
                Uploadformfield(title: 'প্রস্তাবিত গর ওজন'),
                Gap(10),
                Uploadformfield(title: 'প্রস্তাবিত দাম (টাকা)'),
                Gap(10),
                Uploadformfield(
                  title: 'মার্কেটর',
                  isIcon: true,
                ),
                Gap(10),
                Uploadformfield(
                  title: 'নোট',
                ),
                Gap(10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              'মুরগি ওজন পরিমাপে প্রতি দাড়িতে ১০০ গ্রাম ওয়েট \n লস নিতে মর্জি আছি। উল্লেখিত গড় ওজনে প্রতি \n ১০০ গ্রাম কম থাকলে এক টাকা প্রতি কেজিতে কম \n নিতে মর্জি আছি।',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              'ক্রয় এবং বিক্রয়ের সমস্ত সিদ্ধান্তে উপনীত হবার\n পর আমি ক্রয় দাতা, বাজারের পণ্যের দাম যে কোন \n অবস্থায় ওঠা নামাতে আমি ক্রয় এবং বিক্রয়ের \n সমস্ত নির্ধারিত সিদ্ধান্তের উপর অবিচল থাকিব,\n এবংআপনি বিক্রেতা, ঠিক একই নিয়মে অবিচল \n থাকিবেন',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(20),
                SizedBox(
                  width: Get.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'প্রস্তাব সম্পূর্ণ করুন',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Gap(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
