import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/common/widgets/atoms/wrappers/icon_widget_wrapper.dart";

// Import AppBar Widget
import "package:chinmay_expenses_app/common/widgets/compounds/pure_widgets/appbar_widget.dart";

Widget appBarWidgetWrapper({
  int backgroundColor = 0xFFFFFFFF,
  required Widget titleWidget,
  Widget actionWidget = const Text(""),
}) {
  Function iconWidget = iconWidgetWrapper;

  return AppBarWidget(
    titleWidget: titleWidget,
    backgroundColor: backgroundColor,
    iconWidget: iconWidget,
    actionWidget: actionWidget
  );
}