import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/icon_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/sized_box_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/card_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/gesture_detector_widget_wrapper.dart";

// Import Dashboard Options UI
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/ui/pure_widgets/dashboard_options_ui.dart";

Widget dashboardOptionUiWrapper() {
  Function textWidget = textWidgetWrapper;
  Function iconWidget = iconWidgetWrapper;
  Function cardWidget = cardWidgetWrapper;
  Function sizedBoxWidget = sizedBoxWidgetWrapper;
  Function gestureDetectorWidget = gestureDetectorWidgetWrapper;

  return DashboardOptionsUI(
    cardWidget: cardWidget,
    textWidget: textWidget,
    iconWidget: iconWidget,
    sizedBoxWidget: sizedBoxWidget,
    gestureDetectorWidget: gestureDetectorWidget
  );
}