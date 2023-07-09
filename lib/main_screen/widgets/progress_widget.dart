import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'custom_progress_indicator.dart';

class ProgressWidget extends StatelessWidget {
  final double stepsTarget;
  final double stepsReal;
  final double energyTarget;
  final double energyReal;

  ProgressWidget({
    super.key,
    required this.stepsTarget,
    required this.stepsReal,
    required this.energyTarget,
    required this.energyReal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProgressIndicator(
          icon: SvgPicture.asset('assets/images/Durability.svg', semanticsLabel: 'Durability'),
          countIndicator: '$stepsReal / $stepsTarget',
          percent: stepsReal / stepsTarget,
        ),
        CustomProgressIndicator(
            icon: SvgPicture.asset('assets/images/Power.svg', semanticsLabel: 'Power'),
            countIndicator: '$energyReal / $energyTarget',
            percent: ((energyReal != 0.0) & (energyTarget != 0.0)) ? (energyReal / energyTarget) : 0.0),
      ],
    );
  }
}
