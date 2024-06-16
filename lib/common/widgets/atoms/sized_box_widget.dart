import "package:flutter/material.dart";

class SizedBoxWidget extends StatelessWidget {
  final String property;
  final double value;

  const SizedBoxWidget({
    super.key,
    required this.property,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: property == "width" ? value : null,
      height: property == "height" ? value : null,
    );
  }
}