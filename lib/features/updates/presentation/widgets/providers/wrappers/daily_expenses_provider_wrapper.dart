import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/updates/presentation/widgets/ui/wrappers/daily_expenses_ui_wrapper.dart";

// Import daily expenses provider
import "package:chinmay_expenses_app/features/updates/presentation/widgets/providers/pure_providers/daily_expenses_provider.dart";

Widget dailyExpensesProviderWrapper({
  String? date = ""
}) {
  Function dailyExpensesUi = dailyExpensesUiWrapper;

  return DailyExpensesProvider(
    date: date,
    dailyExpensesUi: dailyExpensesUi
  );
}