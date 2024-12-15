import "package:flutter/material.dart";

class IconWidget extends StatelessWidget {
  final IconData icon;
  final int iconColor;
  final double iconSize;

  const IconWidget({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
        icon,
        color: Color(iconColor),
        size: iconSize
    );
  }
}