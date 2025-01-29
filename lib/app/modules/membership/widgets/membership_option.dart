import 'package:flutter/material.dart';

class MembershipOption extends StatelessWidget {
  String title;
  String description;
  Color color;

  MembershipOption(
      {required this.title, required this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 50,
        width: 260,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              description,
              style: TextStyle(fontSize: 12),
            )
          ],
        ));
  }
}
