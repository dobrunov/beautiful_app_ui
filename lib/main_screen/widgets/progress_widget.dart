import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: SvgPicture.asset('assets/images/Durability.svg', semanticsLabel: 'Durability'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      '0.00 K / 50K',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Avenir',
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: SvgPicture.asset('assets/images/Power.svg', semanticsLabel: 'Power'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      '0.0 / 0.0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Avenir',
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
