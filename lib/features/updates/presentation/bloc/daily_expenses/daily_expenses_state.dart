// Import model
import "package:chinmay_expenses_app/features/updates/models/daily_expenses_model.dart";

abstract class DailyExpensesState {}

class DailyExpensesInitial extends DailyExpensesState {}

class DailyExpensesLoading extends DailyExpensesState {}

class DailyExpensesLoaded extends DailyExpensesState {
  final DailyExpenses expenses;
  DailyExpensesLoaded({ required this.expenses });
}

class DailyExpensesError extends DailyExpensesState {
  final DailyExpenses error;
  DailyExpensesError({ required this.error });
}