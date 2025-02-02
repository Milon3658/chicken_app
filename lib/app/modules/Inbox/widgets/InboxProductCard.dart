import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Inboxproductcard extends StatelessWidget {
  const Inboxproductcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/black_chicken.png'),
              height: 80,
              width: 120,
              fit: BoxFit.cover,
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
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Gap(5),
                Text(
                  'ব্রয়লার:২৫০ পিস',
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontSize: 12,
                  ),
                ),
                Gap(5),
                Text(
                  'গড় ওজন: ২.৫ কেজি',
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {},
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                    ),
                    onPressed: () {},
                    child: Text(
                      'প্রস্তাব করুন',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
