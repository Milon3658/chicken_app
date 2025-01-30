import 'package:chicken/app/data/AppColors.dart';
import 'package:flutter/material.dart';

class Builddropdown extends StatefulWidget {
  String image;
  String value;

  Builddropdown({
    required this.image,
    required this.value,
  });

  @override
  State<Builddropdown> createState() => _BuilddropdownState();
}

class _BuilddropdownState extends State<Builddropdown> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage(widget.image)), // Customize the color
        SizedBox(width: 4),
        Text(widget.value),
        Icon(Icons.check, color: primaryColor),
      ],
    );
  }
}



// Widget _buildDropdownButton({
//     required IconData icon,
//     required String value,
//     required List<String> items,
//     required ValueChanged<String?> onChanged,
//   }) {
//     return Row(
//       children: [
//         Icon(icon, color: Colors.orange), // Customize the color
//         SizedBox(width: 8),
//         DropdownButton<String>(
//           value: value,
//           underline: SizedBox(),
//           icon: Icon(Icons.check, color: Colors.green),
//           items: items.map((item) {
//             return DropdownMenuItem<String>(
//               value: item,
//               child: Text(item),
//             );
//           }).toList(),
//           onChanged: onChanged,
//         ),
//       ],
//     );
//   }
// }