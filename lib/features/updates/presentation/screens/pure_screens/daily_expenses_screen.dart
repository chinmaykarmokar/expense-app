import "package:flutter/material.dart";

class DailyExpensesScreen extends StatelessWidget {
  final Function textWidget;
  final Function appBarWidget;
  final Function dailyExpensesProvider;
  final String? date;

  const DailyExpensesScreen({
    super.key,
    required this.textWidget,
    required this.appBarWidget,
    required this.dailyExpensesProvider,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        titleWidget: textWidget(
          text: date!,
          fontSize: 18.0,
          fontWeight: FontWeight.w500
        ),
        backgroundColor: 0xFFF0F5F5
      ),
      body: dailyExpensesProvider(date: date),
    );
  }
}