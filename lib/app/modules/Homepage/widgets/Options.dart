import 'package:chicken/app/modules/Homepage/widgets/BuildDropDown.dart';
import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    String selectedCategory = 'ক্যাটাগিরি';
    String selectedPrice = 'মূল্য:হোলসেলার';
    String selectedEquipment = 'ইকুইপমেন্ট';

    final List<String> categoryItems = ['ক্যাটাগিরি', 'অপশন ১', 'অপশন ২'];
    final List<String> priceItems = ['মূল্য:হোলসেলার', 'মূল্য ১', 'মূল্য ২'];
    final List<String> equipmentItems = ['ইকুইপমেন্ট', 'অপশন ১', 'অপশন ২'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builddropdown(
            image: 'assets/images/duck.png',
            value: selectedCategory,
            items: categoryItems,
            onChanged: (value) {},
          ),
          Builddropdown(
            image: 'assets/images/ticket.png',
            value: selectedPrice,
            items: priceItems,
            onChanged: (value) {},
          ),
          Builddropdown(
            image: 'assets/images/equip.png',
            value: selectedEquipment,
            items: equipmentItems,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
