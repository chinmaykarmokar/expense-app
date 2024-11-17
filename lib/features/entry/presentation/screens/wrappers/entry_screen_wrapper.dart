import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_button_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_input_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/appbar_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/date_picker_widget_wrapper.dart";

// Import Entry Screen
import "package:chinmay_expenses_app/features/entry/presentation/screens/pure_screens/entry_screen.dart";

Widget entryScreenWrapper() {
  Function textWidget = textWidgetWrapper;
  Function formButtonWidget = formButtonWidgetWrapper;
  Function formInputWidget = formInputWidgetWrapper;
  Function appBarWidget = appBarWidgetWrapper;
  Function datePickerWidget = datePickerWidgetWrapper;

  return EntryScreen(
    appBarWidget: appBarWidget,
    textWidget: textWidget,
    formInputWidget: formInputWidget,
    formButtonWidget: formButtonWidget,
    datePickerWidget: datePickerWidget
  );
}