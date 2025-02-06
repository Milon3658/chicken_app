import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/MyDeal/widgets/Chicken_All_Details.dart';
import 'package:chicken/app/modules/MyDeal/widgets/chicken_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ViewDeal extends StatelessWidget {
  const ViewDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C9876),
        title: Text(
          'ভিউ ',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              ChickenCard(),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChickenAllDetails(),
                    ChickenAllDetails(),
                  ],
                ),
              ),
              Gap(20),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFCF5E9),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'নোট',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'আশরাফ হোসাইন',
                        style: TextStyle(
                          fontSize: 18,
                          color: greyText.withOpacity(0.58),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ক্রয় এবং বিক্রয়ের সমস্ত সিদ্ধান্তে উপনীত হবার পর আমি ক্রয় দাতা, বাজারের পণ্যের দাম যে কোন অবস্থায় ওঠা নামাতে আমি ক্রয় এবং বিক্রয়ের সমস্ত নির্ধারিত ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Gap(20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'কোম্পানি মার্কেটের',
                        style: TextStyle(
                          fontSize: 18,
                          color: greyText.withOpacity(0.58),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Market Representative',
                        style: TextStyle(
                          fontSize: 18,
                          color: greyText.withOpacity(0.58),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'আশরাফ হোসাইন',
                        style: TextStyle(
                          fontSize: 18,
                          color: greyText.withOpacity(0.58),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '01786451236',
                        style: TextStyle(
                          fontSize: 18,
                          color: greyText.withOpacity(0.58),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1C9876),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                          )),
                    ),
                    Gap(10),
                    SizedBox(
                      height: 50,
                      width: Get.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1C9876),
                          ),
                          onPressed: () {},
                          child: Text(
                            'PDF ডাউনলোড',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                    Gap(30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
