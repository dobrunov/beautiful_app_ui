import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0, bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.width * 0.15,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(29, 185, 221, 1.00)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
          child: const Text(
            'Start',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              // fontFamily: 'Avenir',
            ),
          ),
        ),
      ),
    );
  }
}
