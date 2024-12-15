import "package:flutter/material.dart";

// Import Dashboard Options UI
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/ui/pure_widgets/dashboard_options_ui.dart";

Widget dashboardOptionUiWrapper({
  required Function cardWidget,
  required Function textWidget,
  required Function iconWidget,
  required Function gestureDetectorWidget
}) {
  return DashboardOptionsUI(
    cardWidget: cardWidget,
    textWidget: textWidget,
    iconWidget: iconWidget,
    gestureDetectorWidget: gestureDetectorWidget
  );
}