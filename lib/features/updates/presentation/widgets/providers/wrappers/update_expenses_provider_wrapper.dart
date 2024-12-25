import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/updates/presentation/widgets/ui/wrappers/update_expenses_ui_wrapper.dart";

// Import update expenses provider
import "package:chinmay_expenses_app/features/updates/presentation/widgets/providers/pure_providers/update_expenses_provider.dart";

Widget updateExpensesProviderWrapper({
  required String? date,
  required String? type,
  required double? price,
}) {
  Function updateExpensesUi = updateExpensesUiWrapper;

  return UpdateExpensesProvider(
    date: date,
    type: type,
    price: price,
    updateExpensesUi: updateExpensesUi
  );
}