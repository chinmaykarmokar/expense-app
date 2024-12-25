import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/icon_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/sized_box_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/card_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/gesture_detector_widget_wrapper.dart";

// Import Dashboard UI
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/ui/pure_widgets/dashboard_ui.dart";

Widget dashboardUIWrapper({
  required dynamic totalExpense
}) {
  Function textWidget = textWidgetWrapper;
  Function iconWidget = iconWidgetWrapper;
  Function sizedBoxWidget = sizedBoxWidgetWrapper;
  Function cardWidget =  cardWidgetWrapper;
  Function gestureDetectorWidget = gestureDetectorWidgetWrapper;

  return DashboardUI(
    totalExpense: totalExpense,
    textWidget: textWidget,
    iconWidget: iconWidget,
    sizedBoxWidget: sizedBoxWidget,
    cardWidget: cardWidget,
    gestureDetectorWidget: gestureDetectorWidget
  );
}