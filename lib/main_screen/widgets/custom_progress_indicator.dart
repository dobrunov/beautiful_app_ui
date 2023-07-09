import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomProgressIndicator extends StatelessWidget {
  final SvgPicture icon;
  final String countIndicator;
  final double percent;

  const CustomProgressIndicator({
    super.key,
    required this.icon,
    required this.countIndicator,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.040,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            LinearPercentIndicator(
              animation: true,
              animateFromLastPercent: true,
              animationDuration: 1000,
              lineHeight: MediaQuery.of(context).size.height * 0.042,
              percent: percent,
              backgroundColor: const Color.fromRGBO(0, 0, 0, 0.2),
              progressColor: const Color.fromRGBO(29, 185, 221, 1.00),
              barRadius: const Radius.circular(30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: icon,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Text(
                    countIndicator,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Avenir',
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
