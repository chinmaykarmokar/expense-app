import "package:flutter/material.dart";

class MonthlyDailyExpensesScreen extends StatelessWidget {
  final Function monthlyDailyExpensesUi;
  final Function appBarWidget;
  final Function textWidget;

  const MonthlyDailyExpensesScreen({
    required this.monthlyDailyExpensesUi,
    required this.appBarWidget,
    required this.textWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        titleWidget: textWidget(
          text: "Expenses this month",
          fontSize: 18.0,
          fontWeight: FontWeight.w500
        ),
        backgroundColor: 0xFFF0F5F5
      ),
      body: SafeArea(
        child: monthlyDailyExpensesUi()
      )
    );
  }
}