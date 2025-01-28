import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Uploadformfield extends StatelessWidget {
  String title;
  bool? isIcon;

  Uploadformfield({required this.title, this.isIcon});

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
        Gap(5),
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: isIcon == true ? Icon(Icons.keyboard_arrow_down) : null,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
