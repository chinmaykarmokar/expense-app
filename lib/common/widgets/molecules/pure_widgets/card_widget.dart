import "package:flutter/material.dart";

class CardWidget extends StatelessWidget {
  final Widget childWidget;
  final EdgeInsets margin;
  final int backgroundColor;

  const CardWidget({
    required this.childWidget,
    required this.margin,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return (
      Card(
        elevation: 5,
        // margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        margin: margin,
        // color: const Color(0xFF3366CC),
        color: Color(backgroundColor),
        child: childWidget
      )
    );
  }
}