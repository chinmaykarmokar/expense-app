import "package:flutter/material.dart";

// Import GestureDetectorWidget
import "package:chinmay_expenses_app/common/widgets/molecules/pure_widgets/gesture_detector_widget.dart";

Widget gestureDetectorWidgetWrapper({
  required void Function() onTapFunction,
  required Widget childWidget
}) {
  return GestureDetectorWidget(
    onTapFunction: onTapFunction,
    childWidget: childWidget
  );
}