import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReceivedTextImage extends StatefulWidget {
  String message;
  String date;

  ReceivedTextImage({required this.message, required this.date});
  @override
  State<ReceivedTextImage> createState() => _ReceivedTextImageState();
}

class _ReceivedTextImageState extends State<ReceivedTextImage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Image(
              image: AssetImage('assets/images/men.png'),
              height: 60,
              width: 60,
            ),
          ]),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage('assets/images/menB.png'),
                                height: 160,
                                width: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/chicken.png'),
                                  height: 75,
                                  width: 135,
                                  fit: BoxFit.cover,
                                ),
                                Gap(5),
                                Image(
                                  image:
                                      AssetImage('assets/images/chicken.png'),
                                  height: 75,
                                  width: 135,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, left: 8),
                        child: Text(
                          widget.message,
                        ),
                      )
                    ],
                  )),
              Gap(2),
              Text(
                widget.date,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
