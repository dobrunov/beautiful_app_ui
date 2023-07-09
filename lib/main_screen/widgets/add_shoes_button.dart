import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

class AddShoesButton extends StatelessWidget {
  final width;
  final height;

  AddShoesButton({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      color: const Color.fromRGBO(29, 185, 221, 0.32),
      strokeWidth: 2, //thickness of dash/dots
      dashPattern: const [7, 4],
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(29, 185, 221, 1.00),
          size: 32,
        ),
      ),
    );
  }
}
