import "package:flutter/material.dart";

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return (
      Card(
        elevation: 5,
        margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        color: const Color(0xFF3366CC),
        child: child
      )
    );
  }
}