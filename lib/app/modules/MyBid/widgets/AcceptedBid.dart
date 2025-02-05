import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AcceptedBid extends StatelessWidget {
  const AcceptedBid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(15),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffFF0202)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Image(
                              image:
                                  AssetImage('assets/images/black_chicken.png'),
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Gap(5),
                              Text(
                                'ব্রয়লার:২৫০ পিস',
                                style: TextStyle(
                                  color: greyText.withOpacity(0.58),
                                  fontSize: 14,
                                ),
                              ),
                              Gap(5),
                              Row(
                                children: [
                                  Text(
                                    'গড় ওজন: ২.৫ কেজি',
                                    style: TextStyle(
                                      color: greyText.withOpacity(0.58),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Gap(10),
                                  Text(
                                    '২৪ দিন',
                                    style: TextStyle(
                                      color: greyText.withOpacity(0.58),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/men_shopping.png'),
                                  height: 80,
                                  width: 100,
                                ),
                              ),
                              Text('রাসেল আহমেদ'),
                            ],
                          ),
                          Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(5),
                              Text(
                                'দাম বরাদ্দ (কেজি): ১৬০টাকা',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Gap(5),
                              Text(
                                'আপনার পণ্যের \n পরিমাণ: ৪৫০ পিস',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Gap(5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/calender.png'),
                                    color: Colors.black,
                                    height: 13,
                                    width: 13,
                                  ),
                                  Gap(5),
                                  Text(
                                    '12 Jan',
                                    style: TextStyle(
                                      color: greyText.withOpacity(0.58),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.EDIT_ADDS);
                    },
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Gap(5),
                          Icon(
                            Icons.edit,
                            color: greyText.withOpacity(0.58),
                          ),
                          Gap(5),
                          Text(
                            'এডিট',
                            style: TextStyle(
                              color: greyText.withOpacity(0.58),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.DELETE_ADDS);
                    },
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Gap(5),
                          Icon(
                            Icons.delete,
                            color: greyText.withOpacity(0.58),
                          ),
                          Gap(5),
                          Text(
                            'ডিলেট',
                            style: TextStyle(
                              color: greyText.withOpacity(0.58),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Gap(10),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffFF0202)),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'আপনার বরাদ্দ দাম পাবলিস্ট হয়েছে',
                      style: TextStyle(
                          color: greyText.withOpacity(0.58),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(5),
                    Image(
                      image: AssetImage('assets/images/verify.png'),
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
                Gap(2),
                Text(
                  'বিক্রেতা আপনার বিড কে গ্রহণ করেছেন',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Gap(10),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/bnsnWomen.png'),
                      height: 80,
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('assets/images/congo.png'),
                      height: 80,
                      width: 60,
                    ),
                    Gap(30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'অনুগ্রহ করে প্রস্তাব দিন',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 170,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(primaryColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              onPressed: () {},
                              child: Text(
                                'প্রস্তাব দিন',
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
