import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/appbar_widget_wrapper.dart";
import "package:chinmay_expenses_app/features/updates/presentation/widgets/providers/wrappers/update_expenses_provider_wrapper.dart";

// Import update expenses screen
import "package:chinmay_expenses_app/features/updates/presentation/screens/pure_screens/update_expenses_screen.dart";

Widget updateExpensesScreenWrapper({
  required String? date,
  required String? type,
  required double? price,
}) {
  Function textWidget = textWidgetWrapper;
  Function appBarWidget = appBarWidgetWrapper;
  Function updateExpenses = updateExpensesProviderWrapper;

  return UpdateExpensesScreen(
    date: date,
    type: type,
    price: price,
    appBarWidget: appBarWidget,
    textWidget: textWidget,
    updateExpenses: updateExpenses,
  );
}