import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Mypofileformfield extends StatelessWidget {
  String hintText;
  String title;

  Mypofileformfield({required this.hintText, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(color: greyText.withOpacity(0.58)),
          ),
        ),
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                color: greyText.withOpacity(0.7), fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: greyText.withOpacity(0.58)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: greyText.withOpacity(0.58)),
            ),
          ),
        ),
        Gap(10),
      ],
    );
  }
}
