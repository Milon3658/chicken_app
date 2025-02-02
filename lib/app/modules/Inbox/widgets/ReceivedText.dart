import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Receivedtext extends StatelessWidget {
  String image;
  String message;
  String date;

  Receivedtext({this.image = '', this.message = '', this.date = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Image(
              image: AssetImage(image),
              height: 60,
              width: 60,
            ),
          ]),
          Gap(2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(40),
              Container(
                // height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(message),
                  ),
                ),
              ),
              Gap(2),
              Text(
                date,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
