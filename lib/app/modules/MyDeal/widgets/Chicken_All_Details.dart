import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChickenAllDetails extends StatelessWidget {
  const ChickenAllDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ক্যাটাগরি:ব্রয়লার'),
            Gap(5),
            Text('সংখ্যা:১৮০পিস'),
            Gap(5),
            Text('গড়ওজন:১.৬০ কেজি'),
            Gap(5),
            Text('দাম:১৫০ টাকা'),
            Gap(5),
            Text('বিক্রেতা:সুরুজ মিয়া'),
            Gap(5),
            Text('পদবী: Diler'),
            Gap(5),
            Text('বিভাগ:রাজশাহী'),
            Gap(5),
            Text('জেলা:সিরাজগঞ্জ'),
            Gap(5),
            Text('থানা:বেলকুচি'),
            Gap(5),
            Text('এলাকা:বেলকুচি সদর'),
            Gap(5),
            Text('মোবাইল নাম্বার'),
            Gap(5),
            Text('01756231425'),
            Gap(5),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff1C9876),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
