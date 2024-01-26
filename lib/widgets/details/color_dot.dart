import 'package:flutter/material.dart';

import '../../constant.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillColor,
    this.isSelected = false,
  });

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            //isSelected لوكانت قيمة true هنضع اللون ولو كانت false ذي ماهية هنضع اللون الشفاف
            color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
