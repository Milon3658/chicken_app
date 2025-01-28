import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/delete_adds_controller.dart';

class DeleteAddsView extends GetView<DeleteAddsController> {
  const DeleteAddsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          title: const Text(
            'এই বিজ্ঞাপনটি কি ডিলিট করতে চান',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image(
                      image: AssetImage('assets/images/black_chicken.png'),
                      height: 100,
                      width: 160,
                    ),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(5),
                      Text(
                        'দাম:১৬০ টাকা',
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Gap(5),
                      Text(
                        'ব্রয়লার:২৫০ পিস',
                        style: TextStyle(
                          color: greyText.withOpacity(0.58),
                          fontSize: 16,
                        ),
                      ),
                      Gap(5),
                      Row(
                        children: [
                          Text(
                            'গড় ওজন: ২.৫ কেজি',
                            style: TextStyle(
                              color: greyText.withOpacity(0.58),
                              fontSize: 16,
                            ),
                          ),
                          Gap(5),
                          Text(
                            '২৪ দিন',
                            style: TextStyle(
                              color: greyText.withOpacity(0.58),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Gap(10),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'কারণ',
                    style: TextStyle(fontSize: 18),
                  )),
              Gap(10),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                'তুমি কি নিশ্চিত যে তুমি এই বিজ্ঞাপনটি \n মুছে ফেলতে চাও?',
                textAlign: TextAlign.center,
              ),
              Gap(10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'হ্যাঁ, চালিয়ে যান।',
                    style: TextStyle(color: Colors.white),
                  )),
              Gap(10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: greyText.withOpacity(0.58),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'বাতিল করুন',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
