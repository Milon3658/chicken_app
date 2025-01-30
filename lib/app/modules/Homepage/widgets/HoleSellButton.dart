import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

class Holesellbutton extends StatelessWidget {
  String title;

  Holesellbutton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              secondaryColor,
            )),
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }
}
