import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
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
      appBar: AppBar(
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
      body: const Center(
        child: Text(
          'AccountView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
