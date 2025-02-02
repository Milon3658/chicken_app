import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

class Messagetile extends StatefulWidget {
  const Messagetile({super.key});

  @override
  State<Messagetile> createState() => _MessagetileState();
}

class _MessagetileState extends State<Messagetile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: AssetImage('assets/images/profileImg.png')),
      title: Text('শরিফ আহমেদ'),
      subtitle: Text('ভাই ১৭০ টাকা দেওয়া যাবে'),
      trailing: Column(
        children: [
          Text(
            '১২:৩০',
            style: TextStyle(color: greyText.withOpacity(0.58)),
          ),
          CircleAvatar(
            backgroundColor: Color(0xff634C98),
            radius: 15,
            child: Text('4', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
