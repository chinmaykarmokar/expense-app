import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/appbar_widget_wrapper.dart";
import "package:chinmay_expenses_app/features/updates/presentation/widgets/providers/wrappers/monthly_daily_expenses_provider_wrapper.dart";

// Import Monthly Daily Expenses screen
import "package:chinmay_expenses_app/features/updates/presentation/screens/pure_screens/monthly_daily_expenses_screen.dart";

Widget monthlyDailyExpensesScreenWrapper() {
  Function textWidget = textWidgetWrapper;
  Function appBarWidget = appBarWidgetWrapper;
  Function monthlyDailyExpensesUi = monthlyDailyExpensesProviderWrapper;

  return MonthlyDailyExpensesScreen(
    appBarWidget: appBarWidget,
    textWidget: textWidget,
    monthlyDailyExpensesUi: monthlyDailyExpensesUi,
  );
}