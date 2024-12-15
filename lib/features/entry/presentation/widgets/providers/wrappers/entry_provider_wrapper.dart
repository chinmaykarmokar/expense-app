import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/entry/presentation/widgets/ui/wrappers/entry_ui_wrapper.dart";

// Import Entry provider
import "package:chinmay_expenses_app/features/entry/presentation/widgets/providers/pure_providers/entry_provider.dart";

Widget entryProviderWrapper() {
  Function entryUi = entryUiWidgetWrapper;

  return Entry(
    entryUi: entryUi,
  );
}