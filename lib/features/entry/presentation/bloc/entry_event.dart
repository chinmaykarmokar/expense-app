abstract class AddExpensesEvent {}

class AddExpense extends AddExpensesEvent {
  final String date;
  final Map<String, dynamic> expenses;

  AddExpense({
    required this.date,
    required this.expenses
  });
}