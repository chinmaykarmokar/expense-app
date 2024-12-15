import "package:flutter/material.dart";

// Import text widget
import "package:chinmay_expenses_app/common/widgets/atoms/pure_widgets/text_widget.dart";

Widget textWidgetWrapper({
  required String text,
  double fontSize = 15.0,
  FontWeight fontWeight = FontWeight.w400,
  int textColor = 0xFF000000
}) {
  return TextWidget(
    text: text,
    fontSize: fontSize,
    fontWeight: fontWeight,
    textColor: textColor
  );
}