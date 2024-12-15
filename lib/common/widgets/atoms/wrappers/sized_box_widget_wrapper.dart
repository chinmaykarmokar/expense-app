import "package:flutter/material.dart";

// Import sized box widget
import "package:chinmay_expenses_app/common/widgets/atoms/pure_widgets/sized_box_widget.dart";

Widget sizedBoxWidgetWrapper({
  double height = 0.0,
  double width = 0.0
}) {
  return SizedBoxWidget(
    height: height,
    width: width
  );
}