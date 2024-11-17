import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/ui/wrappers/dashboard_ui_wrapper.dart";

// Import Dashboard provider
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/providers/pure_providers/dashboard_provider.dart";

Widget dashboardProviderWrapper() {
  Function dashboardUIWrapperWidget = dashboardUIWrapper;
  return Dashboard(
    dashboardUIWrapper: dashboardUIWrapperWidget
  );
}