import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/appbar_widget_wrapper.dart";
import "package:chinmay_expenses_app/features/entry/presentation/widgets/providers/wrappers/entry_provider_wrapper.dart";

// Import Entry Screen
import "package:chinmay_expenses_app/features/entry/presentation/screens/pure_screens/entry_screen.dart";

Widget entryScreenWrapper() {
  Function textWidget = textWidgetWrapper;
  Function appBarWidget = appBarWidgetWrapper;
  Function entryProvider = entryProviderWrapper;

  return EntryScreen(
    appBarWidget: appBarWidget,
    textWidget: textWidget,
    entryProvider: entryProvider
  );
}