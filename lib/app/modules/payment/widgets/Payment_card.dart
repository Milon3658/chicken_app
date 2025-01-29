import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  String title;
  String image;
  String phone;

  PaymentCard({required this.title, required this.image, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
              border: Border.all(
                color: greyText.withOpacity(0.2),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Center(
              child: ListTile(
                leading: Image(
                  image: AssetImage(image),
                  height: 40,
                  width: 40,
                ),
                title: Text(
                  title,
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '$title mobile pay',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            )),
        Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
              border: Border.all(
                color: greyText.withOpacity(0.2),
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  'Merchant number',
                  style: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  phone,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            )),
      ],
    );
  }
}
