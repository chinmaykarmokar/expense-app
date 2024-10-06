import "package:flutter/material.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/text_widget.dart";

class GestureDetectorWidget extends StatelessWidget {
  final dynamic text;
  final double fontSize;
  final int textColor;

  const GestureDetectorWidget({
    super.key,
    required this.text,
    this.fontSize = 15.0 ,
    this.textColor = 0xFF000000
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextWidget(
        text: text,
        fontSize: fontSize,
        textColor: textColor,
      ),
      onTap: () => {},
    );
  }
}