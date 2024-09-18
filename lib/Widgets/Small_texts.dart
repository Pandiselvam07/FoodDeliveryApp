import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Colors.dart';

class SmallTexts extends StatefulWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallTexts({
    super.key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 15.0,
    this.height = 1.2,
  });

  @override
  State<SmallTexts> createState() => _SmallTextsState();
}

class _SmallTextsState extends State<SmallTexts> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.size,
        height: widget.height,
      ),
    );
  }
}
