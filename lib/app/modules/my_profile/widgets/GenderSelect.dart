import 'package:flutter/material.dart';

class Genderselect extends StatefulWidget {
  String value;
  String selectedValue;

  Genderselect({required this.value, required this.selectedValue});

  @override
  State<Genderselect> createState() => _GenderselectState();
}

class _GenderselectState extends State<Genderselect> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: widget.value,
          groupValue: widget.selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              widget.selectedValue = newValue.toString();
            });
          },
        ),
        Text(widget.value),
      ],
    );
    ;
  }
}
