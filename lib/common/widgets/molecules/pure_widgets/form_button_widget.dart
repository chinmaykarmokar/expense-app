import "package:flutter/material.dart";

class FormButtonWidget extends StatelessWidget {
  final VoidCallback? onPressedFunction;
  final Widget childWidget;
  final int backgroundColor;
  final EdgeInsets padding;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonRadius;
  final int borderColor;
  final double borderWidth;

  const FormButtonWidget({
    required this.onPressedFunction,
    required this.childWidget,
    required this.backgroundColor,
    required this.padding,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonRadius,
    required this.borderColor,
    required this.borderWidth,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(backgroundColor),
        padding: padding,
        minimumSize: Size(buttonWidth, buttonHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius),
          side: borderWidth > 0.0 ? BorderSide(
              color: Color(borderColor),
              width: borderWidth
          ) : BorderSide.none,
        ),
      ),
      child: childWidget,
    );
  }
}