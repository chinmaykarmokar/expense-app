import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/gesture_detector_widget_wrapper.dart";

// Import list widget
import "package:chinmay_expenses_app/common/widgets/compounds/pure_widgets/list_widget.dart";

Widget listWidgetWrapper({
  List listItems = const []
}) {
  Function gestureDetectorWidget = gestureDetectorWidgetWrapper;

  return ListWidget(
    listItems: listItems,
    gestureDetectorWidget: gestureDetectorWidget,
  );
}