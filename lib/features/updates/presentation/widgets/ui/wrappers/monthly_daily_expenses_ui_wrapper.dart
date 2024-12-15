import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/list_widget_wrapper.dart";

// Import Monthly daily expenses UI
import "package:chinmay_expenses_app/features/updates/presentation/widgets/ui/pure_widgets/monthly_daily_expenses_ui.dart";

// Import utils
import "package:chinmay_expenses_app/features/updates/presentation/widgets/utils/monthly_daily_expenses_utils.dart";

Widget monthlyDailyExpensesUiWrapper({
  required List? monthlyExpenses
}) {
  Map utils = monthlyDailyExpensesUtils(monthlyExpenses);
  Function listWidget = listWidgetWrapper;

  return MonthlyDailyExpensesUI(
    utils: utils,
    listWidget: listWidget
  );
}