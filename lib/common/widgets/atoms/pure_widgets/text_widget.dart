import "package:flutter/material.dart";

class TextWidget extends StatelessWidget {
  final dynamic text;
  final double fontSize;
  final FontWeight fontWeight;
  final int textColor;

  const TextWidget({
    super.key,
    required this.text,
    this.fontSize = 15.0,
    this.fontWeight = FontWeight.w400,
    this.textColor = 0xFF000000,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: Color(textColor)
      ),
    );
  }
}