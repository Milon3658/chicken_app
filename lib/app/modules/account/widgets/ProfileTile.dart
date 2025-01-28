import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Profiletile extends StatelessWidget {
  String title;
  String image;

  Profiletile({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: primaryColor.withOpacity(0.3)),
          ),
          child: Center(
            child: ListTile(
              leading: Image(
                image: AssetImage(image),
                height: 30,
                width: 30,
              ),
              title: Text(title),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: primaryColor,
              ),
            ),
          ),
        ),
        Gap(4),
      ],
    );
  }
}
