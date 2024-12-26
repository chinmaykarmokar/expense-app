import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/appbar_widget_wrapper.dart";
import "package:chinmay_expenses_app/features/updates/presentation/widgets/providers/wrappers/daily_expenses_provider_wrapper.dart";

// Import daily expenses screen
import "package:chinmay_expenses_app/features/updates/presentation/screens/pure_screens/daily_expenses_screen.dart";

Widget dailyExpensesScreenWrapper({
  String? date = ""
}) {
  Function textWidget = textWidgetWrapper;
  Function appBarWidget = appBarWidgetWrapper;
  Function dailyExpensesProvider = dailyExpensesProviderWrapper;

  return DailyExpensesScreen(
    textWidget: textWidget,
    appBarWidget: appBarWidget,
    date: date,
    dailyExpensesProvider: dailyExpensesProvider
  );
}