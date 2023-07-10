import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:run_app_ui/models/shoes_model.dart';

import 'add_shoes_button.dart';

class AddShoesWidget extends StatelessWidget {
  final String name;
  final List<Shoes> listShoes;

  const AddShoesWidget({
    super.key,
    this.name = '',
    required this.listShoes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddShoesFullButton(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.12,
          fullButton: true,
          listItem: listShoes,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.065,
              ),
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.065,
              ),
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.065,
              ),
              AddShoesButton(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.065,
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
  final List<Shoes> listItem;

  const AddShoesFullButton({
    super.key,
    required this.width,
    required this.height,
    required this.fullButton,
    required this.listItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        color: fullButton ? Colors.transparent : const Color.fromRGBO(29, 185, 221, 0.32),
        strokeWidth: 2,
        dashPattern: const [10, 6],
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.4),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, -1),
              ),
            ],
          ),
          child: fullButton
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 1.0, top: 8, bottom: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listItem[1].name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            '# ${listItem[1].id.toString()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'images/Shoe_2.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                )
              : const Icon(Icons.add, color: Color.fromRGBO(29, 185, 221, 1.00), size: 20),
        ),
      ),
    );
  }
}
