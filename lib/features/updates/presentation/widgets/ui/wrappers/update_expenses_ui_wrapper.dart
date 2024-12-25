import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_button_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_input_widget_wrapper.dart";

// Import update expenses UI
import "package:chinmay_expenses_app/features/updates/presentation/widgets/ui/pure_widgets/update_expenses_ui.dart";

Widget updateExpensesUiWrapper({
  required String? date,
  required String? type,
  required double? price,
}) {
  Function textWidget = textWidgetWrapper;
  Function formInputWidget = formInputWidgetWrapper;
  Function formButtonWidget = formButtonWidgetWrapper;

  return UpdateExpensesUi(
    date: date,
    type: type,
    price: price,
    textWidget: textWidget,
    formInputWidget: formInputWidget,
    formButtonWidget: formButtonWidget
  );
}