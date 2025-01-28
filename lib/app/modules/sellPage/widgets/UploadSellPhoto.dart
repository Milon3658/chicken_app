import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Uploadsellphoto extends StatefulWidget {
  const Uploadsellphoto({super.key});

  @override
  State<Uploadsellphoto> createState() => _UploadsellphotoState();
}

class _UploadsellphotoState extends State<Uploadsellphoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'ফ্রিতে তিনটা ছবি যুক্ত করুন',
                style: TextStyle(
                    fontSize: 16,
                    color: greyText.withOpacity(0.58),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/img.png'),
                      ),
                      Gap(10),
                      Text(
                        'ছবি যুক্ত করুন',
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
                // Gap(10),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/img.png'),
                      ),
                      Gap(10),
                      Text(
                        'ছবি যুক্ত করুন',
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
                // Gap(10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/images/black_chicken.png'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
