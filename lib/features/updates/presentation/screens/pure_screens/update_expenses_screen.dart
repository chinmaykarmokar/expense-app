import "package:flutter/material.dart";

class UpdateExpensesScreen extends StatelessWidget {
  final String? date;
  final String? type;
  final double? price;
  final Function appBarWidget;
  final Function textWidget;
  final Function updateExpenses;

  const UpdateExpensesScreen({
    required this.date,
    required this.type,
    required this.price,
    required this.appBarWidget,
    required this.textWidget,
    required this.updateExpenses,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        titleWidget: textWidget(
          text: "Update expenses for $date"
        )
      ),
      body: updateExpenses(
        date: date,
        type: type,
        price: price
      )
    );
  }
}