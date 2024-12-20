abstract class DailyExpensesEvent {}

class FetchDailyExpenses extends DailyExpensesEvent {
  final String date;

  FetchDailyExpenses({
    required this.date
  });
}