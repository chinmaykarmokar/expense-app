import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/providers/wrappers/dashboard_provider_wrapper.dart";

// Import Dashboard screen
import "package:chinmay_expenses_app/features/dashboard/presentation/screens/pure_screens/dashboard_screen.dart";

Widget dashboardScreenWrapper() {
  Function dashboardProviderWrapperWidget = dashboardProviderWrapper;

  return DashboardScreen(
    dashboardProviderWrapper: dashboardProviderWrapperWidget
  );
}