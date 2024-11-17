import "package:flutter/material.dart";
import "package:flutter/services.dart";

class FormInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final double letterSpacing;
  final double fontSize;
  final int? maxInputLength;
  final String regexp;
  final bool obscureText;
  final bool enabled;
  final int borderColor;
  final Function(String) onChange;
  final Widget childWidget;
  final Function(dynamic) onSubmit;

  const FormInputWidget({
    required this.controller,
    required this.keyboardType,
    required this.letterSpacing,
    required this.fontSize,
    required this.maxInputLength,
    required this.regexp,
    required this.obscureText,
    required this.enabled,
    required this.borderColor,
    required this.onChange,
    required this.childWidget,
    required this.onSubmit,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxInputLength),
        FilteringTextInputFormatter.allow(RegExp(regexp))
      ],
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: childWidget,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(borderColor)),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Color(borderColor),
          ),
        ),
      ),
      onChanged: (value) => onChange(value),
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        color: const Color(0xFF000000),
      ),
      onFieldSubmitted: onSubmit,
    );
  }
}