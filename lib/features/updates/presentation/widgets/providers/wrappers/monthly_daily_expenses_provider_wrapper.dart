import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/updates/presentation/widgets/ui/wrappers/monthly_daily_expenses_ui_wrapper.dart";

// Import Monthly Daily Expenses Provider
import "package:chinmay_expenses_app/features/updates/presentation/widgets/providers/pure_providers/monthly_daily_expenses_provider.dart";

Widget monthlyDailyExpensesProviderWrapper() {
  Function monthlyDailyExpensesUi = monthlyDailyExpensesUiWrapper;

  return MonthlyDailyExpensesProvider(
    monthlyDailyExpensesUi: monthlyDailyExpensesUi
  );
}