import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ColorCircle extends StatelessWidget {
  final Color colorValue;

  final bool isSelected;

  const ColorCircle({
    required this.colorValue,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
          top: defaultPadding / 4, right: defaultPadding / 2),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          border:
          Border.all(color: isSelected ? colorValue : Colors.transparent),
          shape: BoxShape.circle),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: colorValue),
      ),
    );
  }
}