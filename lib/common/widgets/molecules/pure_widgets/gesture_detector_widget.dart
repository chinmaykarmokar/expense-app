import "package:flutter/material.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/pure_widgets/text_widget.dart";

class GestureDetectorWidget extends StatelessWidget {
  final VoidCallback onTapFunction;
  final Widget childWidget;

  const GestureDetectorWidget({
    super.key,
    required this.onTapFunction,
    required this.childWidget
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: childWidget,
    );
  }
}