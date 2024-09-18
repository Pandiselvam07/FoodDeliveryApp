import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Colors.dart';

class BigTexts extends StatefulWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigTexts({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 30.0,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  State<BigTexts> createState() => _BigTextsState();
}

class _BigTextsState extends State<BigTexts> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      overflow: widget.overflow,
      maxLines: 1,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
