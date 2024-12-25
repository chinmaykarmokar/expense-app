import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/daily_lists_widget_wrapper.dart";

// Import daily expenses ui
import "package:chinmay_expenses_app/features/updates/presentation/widgets/ui/pure_widgets/daily_expenses_ui.dart";

Widget dailyExpensesUiWrapper({
  Map expenses = const {},
  String? date = ""
}) {
  Function dailyListsWidget = dailyListsWidgetWrapper;

  return DailyExpensesUi(
    date: date,
    expenses: expenses,
    dailyListsWidget: dailyListsWidget
  );
}