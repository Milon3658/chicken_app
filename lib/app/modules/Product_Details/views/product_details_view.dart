import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Product_Details/widgets/PriceDetails.dart';
import 'package:chicken/app/modules/Product_Details/widgets/ProductDetailsInfo.dart';
import 'package:chicken/app/modules/Product_Details/widgets/SimilerProduct.dart';
import 'package:chicken/app/modules/Product_Details/widgets/TableRowWidget.dart';
import 'package:chicken/app/modules/Product_Details/widgets/TitileImage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9E8E8),
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            'Details',
            style: TextStyle(color: white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TitleImage(),
              Gap(10),
              PriceDetails(),
              Gap(10),
              Productdetailsinfo(),
              Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'বিস্তারিত',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        'অনেক ভালো মুরগি কোনরকম সমস্যা নাই কোন রোগ নাই নিতে পারেন যদি কোন প্রবলেম হয় আমি দেখব আপনারা আসেন দেখে বুঝে তারপরে মুরগীর সংগ্রহ করুন'),
                  ),
                ),
              ),
              Gap(10),
              Image.asset(
                'assets/images/gp_add.png',
                height: 120,
                width: Get.width,
              ),
              Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'অনুরূপ বিজ্ঞাপন',
                    style: TextStyle(
                      color: greyText.withOpacity(0.58),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Gap(10),
              Similerproduct(),
              Gap(10),
              Similerproduct(),
              Gap(10),
              Similerproduct(),
              Gap(10),
              Similerproduct(),
              Gap(10),
              Similerproduct(),
              Gap(10),
              Similerproduct(),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              color: white,
                            ),
                            Gap(10),
                            Text(
                              'কল করুন',
                              style: TextStyle(color: white),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.message,
                              color: white,
                            ),
                            Gap(10),
                            Text(
                              'চ্যাট করুন',
                              style: TextStyle(color: white),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Gap(50),
            ],
          ),
        ));
  }
}
