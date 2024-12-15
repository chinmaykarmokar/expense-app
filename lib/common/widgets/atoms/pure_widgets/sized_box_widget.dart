import "package:flutter/material.dart";

class SizedBoxWidget extends StatelessWidget {
  final double height;
  final double width;

  const SizedBoxWidget({
    super.key,
    this.height = 0.0,
    this.width = 0.0
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height
    );
  }
}