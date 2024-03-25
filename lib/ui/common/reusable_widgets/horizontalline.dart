import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  final double height;
  final Color color;
  final double indent;
  final double endIndent;

  HorizontalLine({
    required this.height,
    required this.color,
    required this.indent,
    required this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(horizontal: indent),
      child: Divider(
        color: color,
        indent: indent,
        endIndent: endIndent,
        thickness: height,
      ),
    );
  }
}