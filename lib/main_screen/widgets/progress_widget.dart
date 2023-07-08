import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'custom_progress_indicator.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProgressIndicator(
          icon: SvgPicture.asset('assets/images/Durability.svg', semanticsLabel: 'Durability'),
          countIndicator: '30.00 K / 50K',
          percent: 0.3,
        ),
        CustomProgressIndicator(
          icon: SvgPicture.asset('assets/images/Power.svg', semanticsLabel: 'Power'),
          countIndicator: '4.0 / 20.0',
          percent: 0.2,
        ),
      ],
    );
  }
}
