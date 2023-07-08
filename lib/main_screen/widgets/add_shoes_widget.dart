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
        AddShoesButton(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.2,
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
