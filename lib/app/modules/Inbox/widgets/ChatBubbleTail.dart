import 'dart:ui';

import 'package:flutter/material.dart';

class ChatBubbleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path()
      ..addRRect(RRect.fromRectAndCorners(
        Rect.fromLTRB(0, 0, size.width - 10, size.height),
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
        bottomLeft: Radius.circular(radius),
        bottomRight: Radius.circular(5),
      ))
      ..moveTo(size.width - 10, size.height - 10) // Tail start
      ..lineTo(size.width, size.height) // Tail point
      ..lineTo(size.width - 10, size.height); // Back to bottom edge
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
