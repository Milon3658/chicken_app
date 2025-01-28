import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/MyTotalAdds/widgets/AddCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/my_total_adds_controller.dart';

class MyTotalAddsView extends GetView<MyTotalAddsController> {
  const MyTotalAddsView({super.key});
  @override
  Widget build(BuildContext context) {
    List<DataTab> _listIconTabToggle = [
      DataTab(title: "বিক্রয়"),
      DataTab(title: "ক্রয়"),
    ];
    return Scaffold(
        backgroundColor: Color(0xffE9E8E8),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          backgroundColor: primaryColor,
          title: Text(
            'বিজ্ঞাপন',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Obx(() => FlutterToggleTab(
                  width: 50,
                  borderRadius: 40,
                  unSelectedBackgroundColors: [Colors.white],
                  selectedBackgroundColors: [secondaryColor],
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  unSelectedTextStyle: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  dataTabs: _listIconTabToggle,
                  selectedIndex: controller.tabTextIconIndexSelected.value,
                  selectedLabelIndex: (index) {
                    controller.tabTextIconIndexSelected.value = index;
                  },
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Gap(10),
              Addcards(),
              Gap(10),
              Addcards(),
              Gap(10),
              Addcards(),
            ],
          ),
        ));
  }
}
