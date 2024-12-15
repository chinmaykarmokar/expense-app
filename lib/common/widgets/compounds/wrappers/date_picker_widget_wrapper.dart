import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_button_widget_wrapper.dart";

// Import Date Picker Widget
import "package:chinmay_expenses_app/common/widgets/compounds/pure_widgets/date_picker_widget.dart";

Widget datePickerWidgetWrapper({
  DateTime? selectedDate,
  required Future<void> Function(BuildContext) selectDate
}) {
  Function textWidget = textWidgetWrapper;
  Function formButtonWidget = formButtonWidgetWrapper;

  return DatePickerWidget(
    textWidget: textWidget,
    selectedDate: selectedDate,
    selectDate: selectDate,
    formButtonWidget: formButtonWidget,
  );
}