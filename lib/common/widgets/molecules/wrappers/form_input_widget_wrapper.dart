import "package:flutter/material.dart";

// Import Form Input Widget
import "package:chinmay_expenses_app/common/widgets/molecules/pure_widgets/form_input_widget.dart";

Widget formInputWidgetWrapper({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required double letterSpacing,
  required double fontSize,
  required int maxInputLength,
  required String regexp,
  bool obscureText = false,
  bool enabled = true,
  int borderColor = 0xFF6C757D,
  Function(String) onChange = _onChangeFunction,
  Function(dynamic) onSubmit = _onSubmitFunction,
  required Widget childWidget,
}) {
  return FormInputWidget(
    controller: controller,
    keyboardType: keyboardType,
    letterSpacing: letterSpacing,
    fontSize: fontSize,
    maxInputLength: maxInputLength,
    regexp: regexp,
    obscureText: obscureText,
    enabled: enabled,
    borderColor: borderColor,
    onChange: onChange,
    onSubmit: onSubmit,
    childWidget: childWidget,
  );
}

void _onChangeFunction(dynamic _) {}
void _onSubmitFunction(dynamic _) {}