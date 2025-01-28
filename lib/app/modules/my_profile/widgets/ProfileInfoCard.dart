import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/profileImg.png'),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  Gap(5),
                  Text(
                    'নাম',
                    style: TextStyle(fontSize: 16, color: greyText),
                  ),
                  Text(
                    'আলামিন মল্লিক',
                    style: TextStyle(
                        fontSize: 16,
                        color: greyText,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Gap(40),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff0074BA)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
                child: Text(
                  'upload photo',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            height: 25,
            width: 100,
            decoration: BoxDecoration(
              color: Color(0xff0074BA),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Center(
                child: Text(
              'Producer',
              style: TextStyle(color: Colors.white),
            )),
          ),
        )
      ],
    );
  }
}
