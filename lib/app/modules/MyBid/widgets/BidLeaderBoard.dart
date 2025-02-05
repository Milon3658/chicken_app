import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Bidleaderboard extends StatelessWidget {
  const Bidleaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xffE5DFCF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(15),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFF0202)),
                    borderRadius: BorderRadius.circular(15),
                  ),
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
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/men_shopping.png'),
                                          height: 80,
                                          width: 70,
                                        ),
                                      ),
                                      Text('রাসেল আহমেদ'),
                                    ],
                                  ),
                                  Gap(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Gap(5),
                                      Row(
                                        children: [
                                          Text(
                                            'দাম বরাদ্দ (কেজি): \n ১৬০টাকা',
                                            style: TextStyle(
                                                color: secondaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        primaryColor),
                                                shape: MaterialStateProperty
                                                    .all(RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10))),
                                              ),
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.call,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                  Gap(5),
                                                  Text(
                                                    'কল করুন',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                      Gap(5),
                                      Text(
                                        'পণ্যের পরিমাণ: ৪৫০ পিস',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Gap(5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Gap(5),
                                  Text(
                                    'গ্রহণ করুন',
                                    style: TextStyle(
                                      color: greyText.withOpacity(0.58),
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              )),
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/purple_x.png'),
                                    height: 25,
                                    width: 25,
                                  ),
                                  Gap(5),
                                  Text(
                                    'বাতিল করুন',
                                    style: TextStyle(
                                      color: greyText.withOpacity(0.58),
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ))
                        ],
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
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/black_chicken.png'),
                                      height: 100,
                                      width: 160,
                                    ),
                                  ),
                                  Gap(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
