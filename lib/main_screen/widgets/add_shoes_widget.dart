import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'add_shoes_button.dart';

class AddShoesWidget extends StatelessWidget {
  const AddShoesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // AddShoesButton(
        //   width: MediaQuery.of(context).size.width * 0.9,
        //   height: MediaQuery.of(context).size.width * 0.2,
        // ),
        AddShoesFullButton(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.2,
          fullButton: false,
        ),

        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AddShoesFullButton extends StatelessWidget {
  final double width;
  final double height;
  final bool fullButton;

  const AddShoesFullButton({
    super.key,
    required this.width,
    required this.height,
    required this.fullButton,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),
      color: fullButton ? Colors.transparent : const Color.fromRGBO(29, 185, 221, 0.32),
      strokeWidth: 2,
      dashPattern: const [10, 6],
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child:
            fullButton ? const SizedBox() : const Icon(Icons.add, color: Color.fromRGBO(29, 185, 221, 1.00), size: 32),
      ),
    );
  }
}
