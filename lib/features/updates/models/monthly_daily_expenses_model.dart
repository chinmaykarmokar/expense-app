class MonthlyDailyExpenses {
  final List? expenses;
  final Object? error;

  MonthlyDailyExpenses({
    this.expenses,
    this.error
  });

  @override
  String toString() {
    return "Expenses: $expenses, Error: $error";
  }
}