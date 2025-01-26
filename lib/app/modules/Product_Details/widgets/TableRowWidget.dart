import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

class TableRowWidget extends StatelessWidget {
  final String label;
  final String value;

  const TableRowWidget({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: greyText.withOpacity(0.58)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value,
              style: TextStyle(fontSize: 16, color: greyText.withOpacity(0.58)),
            ),
          ),
        ],
      ),
    );
  }
}
