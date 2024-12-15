import "package:flutter/material.dart";

// Import Card Widget
import "package:chinmay_expenses_app/common/widgets/molecules/pure_widgets/card_widget.dart";

Widget cardWidgetWrapper({
  required Widget childWidget,
  EdgeInsets margin = const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
  int backgroundColor = 0xFFFFFFFF
}) {
  return CardWidget(
    childWidget: childWidget,
    margin: margin,
    backgroundColor: backgroundColor
  );
}