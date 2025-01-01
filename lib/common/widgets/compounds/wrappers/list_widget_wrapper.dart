import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/sized_box_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/gesture_detector_widget_wrapper.dart";

// Import list widget
import "package:chinmay_expenses_app/common/widgets/compounds/pure_widgets/list_widget.dart";

Widget listWidgetWrapper({
  List listItems = const []
}) {
  Function textWidget = textWidgetWrapper;
  Function sizedBoxWidget = sizedBoxWidgetWrapper;
  Function gestureDetectorWidget = gestureDetectorWidgetWrapper;

  return ListWidget(
    textWidget: textWidget,
    sizedBoxWidget: sizedBoxWidget,
    listItems: listItems,
    gestureDetectorWidget: gestureDetectorWidget,
  );
}