import 'package:chicken/app/data/AppColors.dart';
import 'package:chicken/app/modules/Product_Details/widgets/TableRowWidget.dart';
import 'package:flutter/material.dart';

class Productdetailsinfo extends StatelessWidget {
  const Productdetailsinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        color: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableRowWidget(label: 'পোস্ট হয়েছে:', value: '২ মাস আগে'),
              TableRowWidget(label: 'তারিখ:', value: '৬ নভেম্বর ২০২৪'),
              TableRowWidget(label: 'সময়:', value: 'দুপুর দুইটা ৪৩ মিনিট'),
              TableRowWidget(label: 'ক্যাটাগরি:', value: 'Producer'),
              TableRowWidget(label: 'মোবাইল:', value: '01451784512'),
              TableRowWidget(label: 'ঠিকানা:', value: 'সিরাজগঞ্জ'),
              TableRowWidget(label: 'সদস্যযুক্ত:', value: '২২ শে নভেম্বর ২০২৪'),
            ],
          ),
        ),
      ),
    );
  }
}
