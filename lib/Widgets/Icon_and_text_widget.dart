import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/Small_texts.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize16,
        ),
        SizedBox(width: Dimensions.height5),
        SmallTexts(text: text),
      ],
    );
  }
}
