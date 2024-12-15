import "package:flutter/material.dart";

// Import Form Button Widget
import "package:chinmay_expenses_app/common/widgets/molecules/pure_widgets/form_button_widget.dart";

Widget formButtonWidgetWrapper({
  required void Function() onPressedFunction,
  required Widget childWidget,
  int backgroundColor = 0xFF0066FF,
  EdgeInsets padding = EdgeInsets.zero,
  double buttonWidth = 0.0,
  double buttonHeight = 0.0,
  double buttonRadius = 15.0,
  int borderColor = 0xFF000000,
  double borderWidth = 0.0,
}) {
  return FormButtonWidget(
    onPressedFunction: onPressedFunction,
    childWidget: childWidget,
    backgroundColor: backgroundColor,
    padding: padding,
    buttonWidth: buttonWidth,
    buttonHeight: buttonHeight,
    buttonRadius: buttonRadius,
    borderColor: borderColor,
    borderWidth: borderWidth,
  );
}