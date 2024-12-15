import 'package:intl/intl.dart';

String formatDate(int epoch) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(epoch * 1000);
  String formattedDate = DateFormat("dd MMM yyyy").format(date);

  return formattedDate;
}

Map monthlyDailyExpensesUtils(List? monthlyExpenses) {
  List listItems = [];

  monthlyExpenses?.forEach((expense) {
    print("Expense: $expense");

    var listItem = {
      "date": {
        "name": "Date",
        "value": formatDate(int.parse(expense["date"]))
      },
      "expense": {
        "name": "Expense",
        "value": expense["totalexpense"]
      }
    };

    listItems.add(listItem);
  });

  return {
    "listItems": listItems
  };
}