import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

class BidValue extends StatelessWidget {
  String title;

  BidValue({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: greyText.withOpacity(0.58),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
