import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Homepage/controllers/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Ajkerbazar extends StatefulWidget {
  const Ajkerbazar({super.key});

  @override
  State<Ajkerbazar> createState() => _AjkerbazarState();
}

class _AjkerbazarState extends State<Ajkerbazar> {
  final controller = Get.find<HomepageController>();
  @override
  Widget build(BuildContext context) {
    List<DataTab> _listIconTabToggle = [
      DataTab(title: "বাচ্চার দাম"),
      DataTab(title: "রেডি মুরগির দাম"),
    ];
    return SingleChildScrollView(
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.close))
                ],
              ),
              Gap(10),
              FlutterToggleTab(
                width: 90,
                borderRadius: 10,
                unSelectedBackgroundColors: [greyText.withOpacity(0.2)],
                selectedBackgroundColors: [secondaryColor],
                selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: TextStyle(
                    color: greyText.withOpacity(0.58),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                dataTabs: _listIconTabToggle,
                selectedIndex: controller.tabTextIconIndexSelected.value,
                selectedLabelIndex: (index) {
                  controller.tabTextIconIndexSelected.value = index;
                },
              ),
              Gap(20),
              Container(
                  height: 60,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 16,
                            backgroundColor: primaryColor,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.image,
                                color: secondaryColor,
                              ),
                            ),
                          ),
                          title: Text('কাজী ফার্ম:'),
                          trailing: Text(
                            'ভিউ',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
