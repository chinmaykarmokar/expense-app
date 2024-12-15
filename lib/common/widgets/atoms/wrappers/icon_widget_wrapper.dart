import "package:flutter/material.dart";

// Import icon widget
import "package:chinmay_expenses_app/common/widgets/atoms/pure_widgets/icon_widget.dart";

Widget iconWidgetWrapper({
  required IconData icon,
  int iconColor = 0xFF000000,
  double iconSize = 24.0
}) {
  return IconWidget(
    icon: icon,
    iconColor: iconColor,
    iconSize: iconSize
  );
}