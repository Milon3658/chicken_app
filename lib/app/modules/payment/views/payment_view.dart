import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/payment/widgets/Payment_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: primaryColor,
          actions: [
            Container(
              height: 35,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'পেমেন্ট নির্দেশনা',
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Gap(20)
          ],
          title: const Text(
            'পেমেন্ট',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'আপনার পেমেন্ট পদ্ধতি নির্বাচন করুন',
                  style: TextStyle(
                    color: greyText.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(5),
                Text(
                  'মোবাইল মানি বা মার্চেন্ট নম্বর দিয়ে পেমেন্ট করুন',
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontSize: 14,
                  ),
                ),
                Gap(20),
                PaymentCard(
                    title: 'Bkash',
                    image: 'assets/images/bkash.png',
                    phone: '01785964272'),
                Gap(5),
                PaymentCard(
                    title: 'Nagad',
                    image: 'assets/images/nagad.png',
                    phone: '01785964272'),
                Gap(5),
                PaymentCard(
                    title: 'Rocket',
                    image: 'assets/images/rocket.png',
                    phone: '01785964272'),
                Gap(5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ট্রানজেকশন আইডি কোড প্রদান করুন',
                    style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: greyText.withOpacity(0.58)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/code.png'),
                          height: 50,
                          width: 50,
                        ),
                        Gap(10),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: greyText.withOpacity(0.58)),
                              ),
                            ),
                          ),
                        ),
                        Gap(10),
                      ],
                    ),
                  ),
                ),
                Gap(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ভাউচার স্ক্রিনশট আপলোড করুন',
                    style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: greyText.withOpacity(0.58)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/cloud.png'),
                          height: 40,
                          width: 40,
                        ),
                        Gap(100),
                        Icon(
                          Icons.upload,
                          size: 80,
                          color: secondaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'প্রতিনিধির রেফার আইডি',
                    style: TextStyle(
                        color: greyText.withOpacity(0.58),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Optional',
                    hintStyle: TextStyle(
                      color: greyText.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: greyText.withOpacity(0.2)),
                    ),
                  ),
                ),
                Gap(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('অ্যামাউন্ট  BTD 750',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                Gap(20),
                Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'পেমেন্ট সাবমিট করুন',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )),
                    Gap(5),
                    Expanded(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('assets/images/rise_hand.png'),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          'আপনার এলাকার প্রতিনিধি',
                          style: TextStyle(fontSize: 8),
                        ),
                        subtitle: Text(
                          '01787878787',
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                    )
                  ],
                ),
                Gap(40),
              ],
            ),
          ),
        ));
  }
}
