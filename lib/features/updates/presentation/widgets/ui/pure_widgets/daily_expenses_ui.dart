import "package:flutter/material.dart";

class DailyExpensesUi extends StatelessWidget {
  final String? date;
  final Map expenses;
  final Function dailyListsWidget;

  const DailyExpensesUi({
    required this.date,
    required this.expenses,
    required this.dailyListsWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return (
      dailyListsWidget(
        date: date,
        listItems: expenses
      )
    );
  }
}