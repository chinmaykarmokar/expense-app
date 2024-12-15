import "package:flutter/material.dart";

class MonthlyDailyExpensesUI extends StatelessWidget {
  final Map utils;
  final Function listWidget;

  const MonthlyDailyExpensesUI({
    required this.utils,
    required this.listWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return listWidget(listItems: utils["listItems"]);
  }
}