import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableIcon extends StatelessWidget {
  ReusableIcon(this.label, this.myIcon);

  final String? label;
  final IconData? myIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(myIcon, size: 80.0),
        SizedBox(height: 15.0),
        Text(
          label ?? '',
          style: labelTextStyle,
        )
      ],
    );
  }
}
