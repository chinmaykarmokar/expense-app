import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/sized_box_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_input_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_button_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/compounds/wrappers/date_picker_widget_wrapper.dart";

// Import Entry UI wrapper
import "package:chinmay_expenses_app/features/entry/presentation/widgets/ui/pure_widgets/entry_ui.dart";

Widget entryUiWidgetWrapper() {
  Function textWidget = textWidgetWrapper;
  Function sizedBoxWidget = sizedBoxWidgetWrapper;
  Function datePickerWidget = datePickerWidgetWrapper;
  Function formInputWidget = formInputWidgetWrapper;
  Function formButtonWidget = formButtonWidgetWrapper;

  return EntryUI(
    textWidget: textWidget,
    sizedBoxWidget: sizedBoxWidget,
    datePickerWidget: datePickerWidget,
    formInputWidget: formInputWidget,
    formButtonWidget: formButtonWidget
  );
}