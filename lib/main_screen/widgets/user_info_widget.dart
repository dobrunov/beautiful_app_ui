import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Hello, superman@gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16.0, right: 8.0),
              child: Image.asset(
                'assets/images/ic_coin.png',
                width: 20,
                height: 20,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
              child: Text(
                '00.0000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
