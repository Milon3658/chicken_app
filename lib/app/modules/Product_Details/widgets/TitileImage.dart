import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TitleImage extends StatelessWidget {
  const TitleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/chicken.png',
          height: 240,
          width: Get.width,
          fit: BoxFit.cover,
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/black_chicken.png',
                height: 100,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/black_chicken.png',
                height: 100,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/black_chicken.png',
                height: 100,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
      ],
    );
  }
}
