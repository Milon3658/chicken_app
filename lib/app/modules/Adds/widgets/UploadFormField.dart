import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Uploadformfield extends StatelessWidget {
  String title;
  String? hint;
  bool? isIcon;

  Uploadformfield({required this.title, this.isIcon, this.hint});

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
            hintStyle: TextStyle(color: greyText.withOpacity(0.58)),
            hintText: hint,
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
