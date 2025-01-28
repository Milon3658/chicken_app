import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Adds/widgets/UploadFormField.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/create_input_controller.dart';

class CreateInputView extends GetView<CreateInputController> {
  const CreateInputView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9E8E8),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          backgroundColor: primaryColor,
          title: Text(
            'তথ্য আপলোড করুন',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: 250,
                width: double.infinity,
                // child: SizedBox(
                //   height: 10,
                //   width: 10,
                //   child: Image(
                //     image: AssetImage('assets/images/pic.png'),
                //     height: 10,
                //     width: 10,
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Uploadformfield(title: 'সেড নম্বর'),
                    Uploadformfield(title: 'বাচ্চার ক্যাটাগরি'),
                    Uploadformfield(title: 'বাচ্চার সংখ্যা'),
                    Uploadformfield(title: 'বাচ্চা উঠানোর তারিখ'),
                    Uploadformfield(title: 'সম্ভাব্য বিক্রির তারিখ'),
                    Gap(20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'সম্পন্ন ',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
