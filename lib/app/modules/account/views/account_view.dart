import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/account/widgets/ProfileTile.dart';
import 'package:chicken/app/modules/account/widgets/UserInfoCard.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});
  @override
  Widget build(BuildContext context) {
    List<DataTab> _listIconTabToggle = [
      DataTab(title: "English"),
      DataTab(title: "বাংলা"),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: primaryColor),
        title: Text(
          'অ্যাকাউন্ট',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          Obx(() => FlutterToggleTab(
                width: 50,
                borderRadius: 40,
                unSelectedBackgroundColors: [Colors.white],
                selectedBackgroundColors: [primaryColor],
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Gap(10),
              Userinfocard(),
              Gap(10),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.MY_TOTAL_ADDS);
                },
                child: Profiletile(
                    title: 'আমার সকল বিজ্ঞাপন', image: 'assets/images/pc.png'),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.CHICKEN_MONITOR);
                },
                child: Profiletile(
                    title: 'মুরগি মনিটরিং', image: 'assets/images/pc.png'),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.MY_DEAL);
                },
                child: Profiletile(
                    title: 'আমার ডিল',
                    image: 'assets/images/two_hand_color.png'),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.MY_BID);
                },
                child: Profiletile(
                    title: 'আমার বিড', image: 'assets/images/bid.png'),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.MEMBERSHIP);
                },
                child: Profiletile(
                    title: 'আমার মেম্বারশিপ',
                    image: 'assets/images/member.png'),
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.CHAT);
                  },
                  child: Profiletile(
                      title: 'চ্যাট করুন', image: 'assets/images/chat.png')),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.MY_PROFILE);
                },
                child: Profiletile(
                    title: 'আমার প্রোফাইল',
                    image: 'assets/images/profileImg.png'),
              ),
              Gap(10),
              Row(
                children: [
                  Text(
                    'সেবা',
                    style: TextStyle(
                        color: greyText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        color: greyText,
                        thickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(10),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.ABOUT_US);
                },
                child: Profiletile(
                    title: 'আমাদের সম্পর্কে', image: 'assets/images/group.png'),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.TERMS_CONDITION);
                },
                child: Profiletile(
                    title: 'নীতিমালা ও শর্তমালা',
                    image: 'assets/images/info.png'),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.PRIVECY_POLICY);
                },
                child: Profiletile(
                    title: 'গোপনীয়তা নীতি', image: 'assets/images/info.png'),
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.CONNECT_US);
                  },
                  child: Profiletile(
                      title: 'যোগাযোগ', image: 'assets/images/group.png')),
              Profiletile(
                  title: 'প্রস্থান করুন', image: 'assets/images/back.png'),
            ],
          ),
        ),
      ),
    );
  }
}
