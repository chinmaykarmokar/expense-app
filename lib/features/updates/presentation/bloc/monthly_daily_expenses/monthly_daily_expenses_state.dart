// Import model
import "package:chinmay_expenses_app/features/updates/models/monthly_daily_expenses_model.dart";

abstract class MonthlyDailyExpensesState {}

class MonthlyDailyExpensesInitial extends MonthlyDailyExpensesState {}

class MonthlyDailyExpensesLoading extends MonthlyDailyExpensesState {}

class MonthlyDailyExpensesLoaded extends MonthlyDailyExpensesState {
  final MonthlyDailyExpenses expenses;
  MonthlyDailyExpensesLoaded({required this.expenses});
}

class MonthlyDailyExpensesError extends MonthlyDailyExpensesState {
  final MonthlyDailyExpenses error;
  MonthlyDailyExpensesError({required this.error});
}