import "package:flutter/material.dart";

class DailyExpensesScreen extends StatelessWidget {
  final Function appBarWidget;
  final Function dailyExpensesProvider;
  final String? date;

  const DailyExpensesScreen({
    super.key,
    required this.appBarWidget,
    required this.dailyExpensesProvider,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        titleWidget: Text(date!)
      ),
      body: dailyExpensesProvider(date: date),
    );
  }
}