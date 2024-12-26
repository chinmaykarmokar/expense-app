import "package:flutter/material.dart";

class EntryScreen extends StatelessWidget {
  final Function appBarWidget;
  final Function textWidget;
  final Function entryProvider;

  const EntryScreen({
    required this.appBarWidget,
    required this.textWidget,
    required this.entryProvider,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        titleWidget: textWidget(
          text: "Add expenses",
          fontSize: 18.0,
          fontWeight: FontWeight.w500
        ),
        backgroundColor: 0xFFF0F5F5
      ),
      body: entryProvider()
    );
  }
}