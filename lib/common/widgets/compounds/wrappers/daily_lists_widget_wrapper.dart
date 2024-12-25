import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/text_widget_wrapper.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/wrappers/form_button_widget_wrapper.dart";

// Import daily lists widget
import "package:chinmay_expenses_app/common/widgets/compounds/pure_widgets/daily_lists_widget.dart";

Widget dailyListsWidgetWrapper({
  required String? date,
  required Map listItems
}) {
  Function textWidget = textWidgetWrapper;
  Function formButtonWidget = formButtonWidgetWrapper;

  return DailyListsWidget(
    date: date,
    listItems: listItems,
    textWidget: textWidget,
    formButtonWidget: formButtonWidget,
  );
}